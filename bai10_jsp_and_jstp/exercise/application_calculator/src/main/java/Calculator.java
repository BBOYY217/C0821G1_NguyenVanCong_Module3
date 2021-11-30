public class Calculator {
    public static double calculate (double firstNumber, double secondNumber, char operator) throws Exception {
        switch (operator) {
            case '+':
                return firstNumber + secondNumber;
            case '-':
                return firstNumber - secondNumber;
            case '*':
                return firstNumber * secondNumber;
            case '/':
                if (secondNumber != 0) {
                    return firstNumber / secondNumber;
                } else {
                    throw new Exception("Can't divide by zero");
                }
            default:
                throw new Exception("Invalid operation");
        }
    }
}
