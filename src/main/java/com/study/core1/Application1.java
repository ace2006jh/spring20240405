package com.study.core1;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;

@SpringBootApplication
public class Application1 {
    public static void main(String[] args) {

        System.out.println("메인 메소드 실행");

        Controller c = new Controller();
        Dao dao = new Dao();
        c.setDao(dao);
        c.action();
    }
}


class Dao {
    public void select() {
        System.out.println("select datas...");


    }
}

class Controller {
    private Dao dao;

    public void setDao(Dao dao) {
        this.dao = dao;
    }

    public void action() {
        dao.select();
    }
}