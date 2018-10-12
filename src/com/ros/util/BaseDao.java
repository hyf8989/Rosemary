package com.ros.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

/**
 * 鏁版嵁搴撴搷浣滅殑杈呭姪绫�
 */
public class BaseDao {

	private static final String DRIVER = "com.mysql.jdbc.Driver";



	private static final String URL = "jdbc:mysql://localhost:3306/rosemary?useunicode=true&characterEncoding=utf-8";

	private static final String USER = "root"; // 鐢ㄦ埛鍚�
	private static final String PASSWORD = "root";// 瀵嗙爜

	/**
	 * 鑾峰彇杩炴帴瀵硅薄
	 * 
	 * @return 杩炴帴瀵硅薄
	 */
	public static Connection getConn() {

		Connection conn = null;
		try {

			Class.forName(DRIVER);
			// 寰楀埌杩炴帴瀵硅薄
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

		} catch (Exception e) {
			throw new RuntimeException("鏁版嵁搴撹繛鎺ュけ璐�!", e);
		}
		return conn;
	}

	/**
	 * 閲婃斁璧勬簮
	 * 
	 * @param rs
	 *            缁撴灉闆�
	 * @param pstmt
	 *            鍛戒护澶勭悊瀵硅薄
	 * @param conn
	 *            杩炴帴瀵硅薄
	 */
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			throw new RuntimeException("閲婃斁璧勬簮澶辫触!", e);
		}
	}

	/**
	 * 璁剧疆鍙傛暟
	 * 
	 * @param sql
	 * @param conn
	 * @param pstmt
	 * @param param
	 * @return
	 * @throws SQLException
	 */
	private static PreparedStatement setPstmt(String sql, Connection conn, PreparedStatement pstmt, Object... param)
			throws SQLException {
		pstmt = conn.prepareStatement(sql);
		if (param != null) {
			for (int i = 0; i < param.length; i++) {
				pstmt.setObject(i + 1, param[i]);
			}
		}
		return pstmt;
	}

	/**
	 * 閫氱敤鐨勬暟鎹簱(澧�,鍒�,鏀�)鎿嶄綔鏂规硶
	 * 
	 * @param sql
	 *            sql璇彞
	 * @param param
	 *            sql璇彞鍙傛暟
	 * @return 鍙楀奖鍝嶈鏁�
	 */
	public static int execute(String sql, Object... param) {
		Connection conn = getConn();
		try {
			return execute(sql, conn, param);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 閫氱敤鐨勫鍒犳敼鎿嶄綔(浜嬪姟璁块棶)
	 * 
	 * @param sql
	 * @param conn
	 * @param param
	 * @return
	 */
	public static int execute(String sql, Connection conn, Object... param) {
		PreparedStatement pstmt = null;
		try {
			pstmt = setPstmt(sql, conn, pstmt, param);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			// 杩欓噷鏈�濂藉緱鍒板紓甯镐俊鎭�
			e.printStackTrace();
			throw new RuntimeException("鏁版嵁搴撴搷浣滃け璐�!", e);
		} finally {
			close(null, pstmt, null);
		}
	}

	/**
	 * 閫氱敤鏌ヨ鏂规硶
	 * 
	 * @param sql
	 *            瑕佹煡璇㈢殑sql璇彞
	 * @param cla
	 *            Class瀵硅薄
	 * @param param
	 *            鍙傛暟
	 * @return
	 */
	public static Object select(String sql, Class cla, Object... param) {
		Connection conn = getConn();
		try {
			return select(sql, conn, cla, param);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 甯︿簨鍔＄殑鏌ヨ鏂规硶
	 * 
	 * @param sql
	 * @param conn
	 * @param cla
	 * @param param
	 * @return
	 */
	public static Object select(String sql, Connection conn, Class cla, Object... param) {
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		List<Object> list = new ArrayList<Object>();
		try {
			pstmt = setPstmt(sql, conn, pstmt, param);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				// ?rs 缁撴灉闆� cla Class瀵硅薄
				// object鍏跺疄灏辨槸鏁版嵁琛ㄧ粨鏋勫搴旂殑涓�鏉″疄浣撹褰�,object灏辨槸閭ｄ釜瀹炰綋绫诲璞�
				// 杩欎釜鏂规硶convert鏄皢缁撴灉闆嗗拰cla瀵硅薄杩涜杞崲
				Object object = convert(rs, cla);
				list.add(object);
			}
			return list;
		} catch (SQLException e) {
			throw new RuntimeException("鏁版嵁搴撴煡璇㈠け璐�!", e);
		} finally {
			close(rs, pstmt, null);
		}
	}

	/**
	 * 鑾峰彇鍗曚釜璁板綍鍊�,鏄崟涓褰曟敞鎰�,绫讳技count(1)
	 * 
	 * @param sql
	 * @param param
	 * @return
	 */
	public static Object getFirst(String sql, Object... param) {
		Connection conn = getConn();
		try {
			return getFirst(sql, conn, param);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 鑾峰彇鍗曚釜璁板綍 浜嬪姟
	 * 
	 * @param sql
	 * @param conn
	 * @param param
	 * @return
	 */
	public static Object getFirst(String sql, Connection conn, Object... param) {
		List list = (List) select(sql, conn, Object.class, param);
		if (list.isEmpty()) {
			return null;
		}
		return list.get(0);
	}

	/**
	 * 浜嬪姟澶勭悊鎿嶄綔
	 * 
	 * @param tran
	 * @return
	 */
	public static Object transaction(ITransaction tran) {
		Connection conn = getConn();
		try {
			conn.setAutoCommit(false);
			Object obj = tran.execute(conn);
			conn.commit();
			return obj;
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				throw new RuntimeException("鍥炴粴澶辫触!", e);
			}
			throw new RuntimeException("浜嬪姟鎵ц澶辫触", e);
		} finally {
			close(null, null, conn);
		}
	}

	/**
	 * 鏌ヨ缁撴灉鐨勮浆鎹�
	 * 
	 * @param rs
	 * @param cla
	 * @return
	 */
	public static Object convert(ResultSet rs, Class cla) {
		try {
			if ("java.lang.Object".equals(cla.getName())) {
				return rs.getObject(1);
			}
			// 鍒涘缓瀹炰綋绫荤殑瀹炰緥 Class绫诲璞＄殑鏂规硶锛屽垱寤烘寚瀹氬璞＄殑瀹炰緥
			// new Goods(); new News(); new person(); new Users();
			Object object = cla.newInstance();// new Users鐨勫璞� new Question瀵硅薄
			//// 缁撴灉闆嗗ご淇℃伅瀵硅薄
			ResultSetMetaData metaData = rs.getMetaData();
			// 寰幆涓哄疄浣撶被鐨勫疄渚嬬殑灞炴�ц祴鍊� getColumnCount寰楀埌鍒楃殑涓暟
			for (int i = 1; i <= metaData.getColumnCount(); i++) {
				// 鑾峰彇鍒楀悕
				String name = metaData.getColumnLabel(i);
				//// 娉細鍒楀悕涓庡睘鎬у悕蹇呴』涓�鑷淬�傛渶濂介伒寰獑椹煎懡鍚嶆柟娉�. rs.getObject(i) 缁撴灉闆嗕腑鐨勬煡璇㈢粨鏋滃拰瀵硅薄鍖归厤
				BeanUtils.setProperty(object, name, rs.getObject(i));
			}
			return object;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("灞炴�ц缃け璐�!", e);
		}
	}

	/**
	 * 鍒嗛〉鎿嶄綔 mysql;
	 * 
	 * @param sql
	 *            sql璇彞 select * from users
	 * @param page
	 *            椤电爜(1,2,3)
	 * @param pageSize
	 *            姣忛〉鏄剧ず鐨勮褰曟暟
	 * @param cla
	 *            鎸囧畾绫诲瀷鐨刢lass
	 * @param param
	 *            鎸囧畾鍙傛暟
	 * @return
	 */
	public static PageData getPage(String sql, Integer page, Integer pageSize, Class cla, Object... param) {
		// sql : select * from users
		// selSql select count(1) from (select * from users) t
		String selSql = "select count(1) from (" + sql + ") t";
		if (page == null || page < 1) {
			page = 1;
		}
		if (pageSize == null || pageSize < 1) {
			pageSize = 10;
		}
		// 鏌ヨ瀵瑰簲鐨勮褰曟暟鏈夊嚑鏉�
		Integer count = Integer.parseInt(getFirst(selSql, param).toString());

		int totalPage = count / pageSize;
		// 鐪嬫槸鍚︽湁浣欐暟 47%10
		if (count % pageSize != 0) {
			totalPage++;
		}

		// 濡傛灉鐢ㄦ埛浼犻�掔殑鍙傛暟 page 宸茬粡瓒呭嚭鎬婚〉鏁�
		if (page > totalPage) {
			// page搴旇涓烘渶鍚庝竴椤�
			page = totalPage;
		}

		// 璁剧疆銆愯绠椼�� 璧峰浣嶇疆
		// page 1=>绗竴椤� start =>0
		// page 2 =>绗簩椤� start => 10
		int start = (page - 1) * pageSize;
		// 瀹屾暣鐨勬煡璇㈣鍙�
		selSql = sql + " limit " + start + "," + pageSize;
		// 鎵ц鏌ヨ
		List list = (List) select(selSql, cla, param);
		// 鍒涘缓PageData
		PageData data = new PageData(list, count, pageSize, page);
		// 杩斿洖鍊间负PageData
		return data;
	}

	/**
	 * 鍒嗛〉鎿嶄綔 sqlserver
	 * 
	 * @param page
	 * @param pageSize
	 * @param cla
	 * @param identity
	 * @return
	 */
	public static PageData getPage(Integer page, Integer pageSize, Class cla, String identity) {
		String name = cla.getName().substring(cla.getName().lastIndexOf(".") + 1);// 鏍规嵁鍛藉悕瑙勫垯浠庣被鍚嶈幏鍙栨暟鎹簱琛ㄥ悕
		String selSql = "select count(*) from " + name;// 鑾峰彇鎬绘暟
		if (page == null) {
			page = 1;
		}
		if (pageSize == null) {
			pageSize = 20;
		}
		int start = (page - 1) * pageSize;
		Integer count = Integer.parseInt(getFirst(selSql, null).toString());
		selSql = "select top " + pageSize + " * from " + name + " where " + identity + " not in (select top " + start
				+ " " + identity + " from " + name + " )"; // 鎷兼帴鏌ヨ璇彞
		List list = (List) select(selSql, cla, null);
		PageData data = new PageData(list, count, pageSize, page);
		return data;
	}

}
