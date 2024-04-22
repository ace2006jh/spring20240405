package com.study.core2;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application2 {
    public static void main(String[] args) {
        BeanFactory beanFactory = SpringApplication.run(Application2.class);
        Dao bean1 = beanFactory.getBean(Dao.class);
        Controller bean2 = beanFactory.getBean(Controller.class);

    }
}
// @Component : Spring이 관리하는 객체 (Spring Bean)
@Component
class Dao {

}
@Component
class Controller {

}