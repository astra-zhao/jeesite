package com.thinkgem.jeesite.test;

public class UnsignedByte {
	public short getValue(byte i) {// 将 byte 转为无符号的数字
		short li = (short) (i & 0xff);
		return li;
	}

	public byte toUnsignedByte(short i) {
		return (byte) (i & 0xff);// 将 short 转为无符号 byte
	}

	public static void main(String[] args) {
		UnsignedByte ins = new UnsignedByte();
		short[] shorts = new short[256];// 声明一个 short 数组
		for (int i = 0; i < shorts.length; i++) {// 数组不能超过无符号 byte 的上限
			shorts[i] = (short) i;
		}
		byte[] bytes = new byte[256];// 使用 byte 数组替代 short 数组
		for (int i = 0; i < bytes.length; i++) {
			bytes[i] = ins.toUnsignedByte(shorts[i]);// short 数组的数据存到 byte 数组中
		}
		for (int i = 0; i < bytes.length; i++) {
			System.out.println(ins.getValue(bytes[i]) + " ");// 从 byte 数组中取出无符号的
																// byte
		}
	}
}
