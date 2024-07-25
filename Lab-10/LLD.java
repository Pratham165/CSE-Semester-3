import java.util.Scanner;

class Node {
    int data;
    Node next;

    Node(int data) {
        this.data = data;
        this.next = null;
    }
}

class LinkedList {
    Node head;

    void insertAtFront(int data) {
        Node newNode = new Node(data);
        newNode.next = head;
        head = newNode;
    }

    void insertAtEnd(int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
        } else {
            Node current = head;
            while (current.next != null) {
                current = current.next;
            }
            current.next = newNode;
        }
    }

    void deleteFirstNode() {
        if (head == null) {
            System.out.println("List is empty");
        } else {
            head = head.next;
        }
    }

    void deleteLastNode() {
        if (head == null) {
            System.out.println("List is empty");
        } else if (head.next == null) {
            head = null;
        } else {
            Node current = head;
            while (current.next.next != null) {
                current = current.next;
            }
            current.next = null;
        }
    }

    void deleteAtPosition(int position) {
        if (head == null) {
            System.out.println("List is empty");
        } else if (position == 0) {
            head = head.next;
        } else {
            Node current = head;
            for (int i = 0; i < position - 1; i++) {
                if (current.next != null) {
                    current = current.next;
                } else {
                    System.out.println("Position out of range");
                    return;
                }
            }
            if (current.next != null) {
                current.next = current.next.next;
            } else {
                System.out.println("Position out of range");
            }
        }
    }

    void display() {
        Node current = head;
        while (current != null) {
            System.out.print(current.data + " ");
            current = current.next;
        }
        System.out.println();
    }
}

public class LLD {
    public static void main(String[] args) {
        LinkedList linkedList = new LinkedList();
        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.println("1. Insert at front");
            System.out.println("2. Display all nodes");
            System.out.println("3. Delete first node");
            System.out.println("4. Insert at end");
            System.out.println("5. Delete last node");
            System.out.println("6. Delete at position");
            System.out.println("7. Exit");
            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();
            switch (choice) {
                case 1:
                    System.out.print("Enter data: ");
                    int data = scanner.nextInt();
                    linkedList.insertAtFront(data);
                    break;
                case 2:
                    linkedList.display();
                    break;
                case 3:
                    linkedList.deleteFirstNode();
                    break;
                case 4:
                    System.out.print("Enter data: ");
                    data = scanner.nextInt();
                    linkedList.insertAtEnd(data);
                    break;
                case 5:
                    linkedList.deleteLastNode();
                    break;
                case 6:
                    System.out.print("Enter position: ");
                    int position = scanner.nextInt();
                    linkedList.deleteAtPosition(position);
                    break;
                case 7:
                    System.out.println("Your final node is:");
                    linkedList.display();
                    return;
                    
                default:
                    System.out.println("Invalid choice");
            }
        }
    }
}