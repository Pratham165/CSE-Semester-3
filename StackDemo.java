public class StackDemo {
    static class Node {
        int data;
        Node next;

        Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    static class Stack {
        Node top = null;
        int size = 0;

        public void push(int data) {
            Node newNode = new Node(data);
            if (top == null) {
                top = newNode;
            } else {
                newNode.next = top;
                top = newNode;
            }
            size++;
        }

        public int pop() {
            if (top == null) {
                System.out.println("Stack Underflow");
                return 0;
            } else {
                int data = top.data;
                top = top.next;
                size--;
                return data;
            }
        }

        public int peek() {
            if (top == null) {
                System.out.println("Stack Underflow");
                return 0;
            } else {
                return top.data;
            }
        }

        public int size() {
            return size;
        }

        public boolean isEmpty() {
            return top == null;
        }

        public void display() {
            if (top == null || top.next == null) {
                return;
            }
            Node prev = top;
            Node curr = top.next;

            while (curr != null) {
                Node next = curr.next;
                curr.next = prev;
                
                prev = curr;
                curr = next;
                System.out.println(prev.data);
            }

            top.next = null;
            top = prev;

            
        }
    }


    public static void main(String[] args) {
        Stack s = new Stack();

        s.push(1);
        s.push(2);
        s.push(3);
        s.push(4);
        s.push(5);
        System.out.println("Stack elements:");
        s.display();
        System.out.println("Popped element: " + s.pop());
        System.out.println("Stack elements after pop:");
        s.display();
        System.out.println("Top element: " + s.peek());
        System.out.println("Stack size: " + s.size());
        System.out.println("Is stack empty? " + s.isEmpty());
    }
}