package by.tms.service;

public class CalcService {

    public double operation(double num1, double num2, String operation) {
        switch (operation) {
            case "sum":
                return sum(num1, num2);

            case "sub":
                return sub(num1, num2);

            case "mul":
                return mul(num1, num2);

            case "div":
                return div(num1, num2);
        }
        return 0;
    }


    private double sum(double num1, double num2) {
        return num1 + num2;
    }

    private double sub(double num1, double num2) {
        return num1 - num2;
    }

    private double mul(double num1, double num2) {
        return num1 * num2;
    }

    private double div(double num1, double num2) {
        if (num2 == 0) {
            return 0;
        } else {
            return num1 / num2;
        }
    }

}
