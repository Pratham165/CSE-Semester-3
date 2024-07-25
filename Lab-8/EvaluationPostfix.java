import java.util.Stack;
import java.util.Scanner;
import java.util.*;

public class EvaluationPostfix {
    public static void evaluatePostfix(String s){
        Stack<Integer> st = new Stack<>();
        for (int i = 0; i < s.length(); i++) {
            char temp = s.charAt(i);
            if (temp == '+' || temp == '-' || temp == '*' || temp == '/') {
                int oper2 = st.pop();
                int oper1 = st.pop();
                int result = 0;
                switch (temp) {
                    case '+':
                        result = oper1 + oper2;
                        break;
                    case '-':
                        result = oper1 - oper2;
                        break;
                    case '*':
                         result = oper1 * oper2;
                        break;
                    case '/':
                        result = oper1 / oper2;
                        break;
                    default:
                        break;
                }
                st.push(result);
            } else {
                st.push(Integer.parseInt(String.valueOf(temp)));
            }
            
        }
        int ans = st.pop();
        System.out.println("Answer : " + ans);
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter postfix expression : ");
        String s = sc.next();
        evaluatePostfix(s);
    }

}
