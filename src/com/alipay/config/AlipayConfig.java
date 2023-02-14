package com.alipay.config;

public class AlipayConfig {
	// �̻�appid
	public static String APPID = "2021000122612797";
	// ˽Կ pkcs8��ʽ��
	public static String RSA_PRIVATE_KEY = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCAb/X7j39uWzxjcJAtS0G/DCnPGSyfGhBRkZcOcauR/hh0jiHz2prw4/1UGt45mLhqHXgibFwShUbAJChzrIFE2+QCwoav43LrBQGWy4xtmDC7NN8vpM1Bjpj8XkmWDiMNSGf6fty8PN6t6wjlQrLRNy3PR1WC/0zCHLp6JmZRn5jZyQDbbLggwZu/TA/BxJgv2TVYI9MbAcgnwgBIZnPbX95SszDev/qMfXKMX0pNinqBLZS7pfPWShhFHhx1dqoWjWqZkkqps4p8h7NdnBsRvL3DfhADaMiQGwHDbZQnuAfX/scjqQRPh4eucAgNKt+n9ADEBsO585e+oFFWpslNAgMBAAECggEAdWFdhu3LgZkCZMMAEVUhHjBImYwhWrrgRRvw2POL4N4/jW5Em2+jgRpscIwpoqvvhpOuMo+jyg1h7sJc8fKrJbps9RTBMUiGw0GNBTq7+YFIsB8PBqTwLcTcDnFBgVEkOcR9utJse+CJhpsyQwylDk4GoNRJ03Htvc2xo2cqxdbmYUc+ftS2xlFiCK08rJS251D3hqWlSuRsoHYB/vsqnVXZxhp+ZP5fZWk1hN0ns9vO2uRYp5MWKSKAuzYoZrqdd3ecDuuhaVV61o8MCJXBZ+GdHK0FH0vdGXtTkSSoBUclNQqfaA/bpuJXXRijTC8QpA9KL8omiy29qtlUZaegJQKBgQDrpgxfYMA04L8Wm1zVqSCl3KI7jI/FAWxmAml26VWs9l0iiYKS8pWAKJuf3uBF04TxkMvoCvh35ZEtlfik6YlaesTLcsVrJKNcvUjh1hFeQD/0RA7EuDXMzNcXCHnd/ugX8mvWS6rBn/iVmcQLh0Wbk1SjU3bndU3QO74O2TyH+wKBgQCLh5SBjQ5bryMQ8oup2U8IyRrUyGObnnAi4WWjobqMObn+4suQvS1NN7b7xfioQwqFEWGhJnlouQpJ25kTZBidpCo6Ziykeyxcl26kxa0Vq7rEOxYX8nNqHY8g/RJ0bXeXupgJtklBgdiuoOpEgTN1OnqbNZX5rVmhvg0EaYpJVwKBgQC7+yIzk8LAa+kD57wO1XQt2+uvBVpLFe+bEKGBMnIeIAn72yZGgy2vprU+u1S9XxbWfWOsH9RGEOPXMaPAKmxfuT/z7AKAjiGjgXv6bAI+5ZIfEYuWcjy4u096GFDfPtF3CPPtZz84Zpyu+pLhf2+Pw9/oylQ4H+OLEZ1zyuf2sQKBgGFKvtC/DN39d1Qf7CcZMjUMFbt9p4chqUuJI5g/85ZHwlvqxMs+PlJzoRJabxLU/IbhIdR+wXW2YWgyycBtsYRqrk9eY46lnL9LkIkwlYpg3rBqCvPTyYqa5ey4yp+InTWdlNpg0x/sbK0H45K1DK6XglqruNIKgE95+BW1igmtAoGAPCEeYg8RpwUAVx1ollUmpbDHWz89wuQfQiYT0skWrh55fSiLEpF4yy+D/yZHBx0vDT4D3tvIAuMnCRCCUQtHGWWbwFvgYklGslpdoKtFluzNNHpQalCvVxohuODPzh9H3voYPYDZ1glWu7f1FzR92resxEVeJ4+ib/I/m4xOae0=";
	// �������첽֪ͨҳ��·�� ��http://����https://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
	public static String notify_url = "http://f6y48q.natappfree.cc/notify_url.jsp";
	// ҳ����תͬ��֪ͨҳ��·�� ��http://����https://��ʽ������·�������ܼ�?id=123�����Զ���������������������������� �̻������Զ���ͬ����ת��ַ
	public static String return_url = "http://f6y48q.natappfree.cc/return_url.jsp";
	// �������ص�ַ
	public static String URL = "https://openapi.alipaydev.com/gateway.do";
	// ����
	public static String CHARSET = "UTF-8";
	// ���ظ�ʽ
	public static String FORMAT = "json";
	// ֧������Կ
	public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqbosNL8KRNwMNYKxmiGjjiJ4FWrBPZKLWgZ8D/EY7ocYyfuBAdsYbakP3rtcwLp285K8TowHWBSnHkgHUEm9YNzO+RmlB7OmJA0q/mtmD2546WQVh+jO/Ctn/kXk8tBhLQ1M3skjOgyIBcojIKinzJpgGyAWapf5BBW+QBNsDrgJ9TJ1QmFPF3qkz2Xs3rgeVRxA0WuVaTYfTLIZ7u8vPmajMPxbArclYZBJqjnjhDeGk75HA65g5gIRlmBF+FOQOt/7Q3utNbhLypmZaSIyeTLQf1z2qVXzX1Ha533QDZgDujK8bCM1YwEulc94fc/PbknFP0meQEJdS8/E90N4CwIDAQAB";
	// ��־��¼Ŀ¼
	public static String log_path = "/log";
	// RSA2
	public static String SIGNTYPE = "RSA2";
}
