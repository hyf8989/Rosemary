package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id ="2016092100566124";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCsbfuZP1KW78LYvoZG/jxXvJFjF0MGjIvhpcEFOOAtM3kD8GLzwqr/kKQmZwzK2eOumH+LUDUaGc6XFdYTGq+cB2U8jt6SETV8eY+8lsy0mfWVvwUQX333zXtnBJuul+SoKW9O1pWmkctm4GJbofyNLx5w8p1RXeBiur82jRKqih3fT8FM2QynBSu0rj4jyRtJo3MUmqiKP0XAUI0uEimn9VyyY8M4GNSpKU8GIwtBVoE2euCiGpq42lJIrI9ehG5PC/JVjGe8BPCRCg2XriTDMyjyrEfjRDe7/fUPPrt08bsFTOLViDh7Lly8pfWJw33xt2jrLq35MHzsRgijhhWBAgMBAAECggEANIM+R5qgVXVpesbzb/WHfRThljMEZ58wDqWDVkrPAxUU+t0f1arolvJ++28Q10pqa8bnuQ7RTUSkxSCSVLkg2DzsWPgN0qBJEMKYws+OQkZNI7DMIwNiArDiryoZG6AItCoCSxlQ9CycrJUTf2Ki3oCGHdHVlW0opAjJqRxnneX4S8Myg0+3RMWVKvVhBPfGPAKyR7vKTXL00hPIohPg1ZQJUlLBtILSGVfAg9rqOny1NIWvbYBZvjPDqLn1yeBwPROccM69ovuLT7lZUgOy0fbAt6kfm73/XfG6JQSLUcmpRtnN5VvMiPNtzufBeRKS86ToMJByCmOCsJSPPO52QQKBgQDZp2n9A7rfQcEzAruHHNXHCwzFL2J5r0Vnnqw1NNFzinJbXhJI6x4j9HW9JLyRXyWoxWOpcmaDafQh+sQgc8dKmph7AGA6iLhg4V4/3U/uKbBqSIsask821OsKXEYCCKDMOHu2/mRNp5K6lMQh4/AQxy67XcQdelt+aBv7iTkSaQKBgQDKzt6X4yVaRL1sppO1+9h33alCxwnNfOeZf1sfPqY4RUmo/XUltTY42tlH7dlfe1z8FUTGdCJ1Ss0TmwmOllAxAxC5AsLkhG+WC2wElNaJ8wFYKhLsTgN+7z43m9zSoqYI0WuxX3MBbgLmqCAA9xsCeWeTTcOYyImjgzZAVmVXWQKBgG2ve69BKPSHy5gsYVrmwikLvYTFq2fNVzmv8fLiSkdi1tyKnMZYjpjqAkeucsUD4RObXe0vtM+3HovdNudv0VgcbolWGCiHa/uOt5ORsU1BfyEgq9FpWJg2Vrii5bjypi4krNv8eYnU0BHtFKZLm1ipODi+OS3t0pvyVV++uJ85AoGAL557LXasIpHZWFWUgTptDVgCkidh6dnWF3iL0L5JERVTwlYg14XBAYCBXB5A1+aDYr0rtN036gpyNJRGnjA1DA0INCit0jI2cSilaD36UdG5ExZt8wYuU/OgzDXQl7SQ/6kMfE1JF6DZFYeMXC2pLd+Lrk6oCourpbT9XAXtLaECgYBJlkbBT9HuFBKihflOKyH6GPqsrmFBLSPEvi6tWEMzxlM1AejotVsEOrkPBvM/fQ2WfAD1k/K70bffm32Wxw28yFodk9KMySIPRlhH/ePn2b8WA/y69bwmVIAR6ZwZVmEkegaXtAUsl8+DTpZtn/eHuTVe4EA1kWBxQFP/tko7hw==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzM+cf5Rnu0AfL/H2w19nqslG1CjZ5MCc/2Kcr9B4VunGKpc8I1X1tQlBp5VgqgTbcuk1JCoMIUvE2AGaO8JxlsbBywfUrJg1d/bIwHXWescoXL3VvKQI/Llk9rovJmD1gx0g7NrSlEWduwLXGIvc27VoR+Yxi+/mqORFO2LO4MBN+OHRDCIswZYmGdo2h/1qGPijT80XM9eexbuS3hjyNX9FMBXxQHtPiCMz7bepdKmhssfWfEwGLy9hy1ziv5XgqWeD0Y8ZCsxI8WFIRNWT8jM/3bLJ7UHz1tT2SfOBrL3xbH69uacWiseZMvNKGiwYnjQgwuZP/9LV2KtCtgJWGQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/Rosemary/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/Rosemary/index/success.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
			
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

