package com.ros.api;

import java.net.URI;

import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

/**
 * 继承自HttpEntityEnclosingRequestBase，覆盖其中的getMethod方法，使其返回“DELETE”，
 * 使HttpDelete可以发送body信息。
 */
@NotThreadSafe

public class HttpDeleteWithBody extends HttpEntityEnclosingRequestBase {
    public static final String METHOD_NAME = "DELETE";
    
    /**
     * 覆盖其中的getMethod方法，使其返回“DELETE”,
     */
    @Override
    public String getMethod() { return METHOD_NAME; }

    public HttpDeleteWithBody(final String uri) {
        super();
        setURI(URI.create(uri));
    }
    public HttpDeleteWithBody(final URI uri) {
        super();
        setURI(uri);
    }
    public HttpDeleteWithBody() { super(); }
}
