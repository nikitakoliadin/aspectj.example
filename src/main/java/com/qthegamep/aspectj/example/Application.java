package com.qthegamep.aspectj.example;

import com.qthegamep.aspectj.example.service.TestService;
import com.qthegamep.aspectj.example.service.TestServiceImpl;

public class Application {

    public static void main(String[] args) {
        TestService testService = new TestServiceImpl();
        testService.testMethod();
    }
}
