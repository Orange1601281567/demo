package com.example.demo;


import java.awt.*;

public class SomethingIsWrong {

    public static void main(String[] args ){
        int[][] arr = new int[5][5];
        arr[2][3]=5;
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                System.out.print(arr[i][j]+"\t");
            }
            System.out.println("测试自动部署");
        }
//        for (int i=1;i<10;i++){
//            for (int j = 1; j <=i; j++) {
//                System.out.print(i+"*"+j+"="+i*j+"\t");
//            }
//            System.out.println();
//        }
    }
}
