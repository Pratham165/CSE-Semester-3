 class LinkList{
	Node head;
	class Node{
		String data;
		Node link;
		Node(String data){
			this.data=data;
			this.link=null;
		}
	}
			public void insFirst(String data){
			 Node n1 = new Node (data);
			 if(head == null){
				 head=n1;
				 return;
			 }
			 n1.link=head;
			 head=n1;
		}
	public void insLast(String data){
		Node n1 = new Node (data);
		if(head == null){
			head=n1;
			return;
		}
		Node currentNode = head;
		while ( currentNode.link != null ){
			currentNode = currentNode.link;
		}
		currentNode.link = n1;
	}
		public void  printList(){
			if(head == null){
				System.out.println ("List is Empty");
				return;
			}
			Node currentNode = head;
			while ( currentNode != null ){
				System.out.print (currentNode.data + " ");
				currentNode = currentNode.link;
			}
			
		}
	}
public class LL{
	public static void main ( String[] args ) {
		LinkList list = new LinkList ();
		list.insFirst ("M");
		list.insFirst ("O");
		list.printList ();
		
		System.out.println ();
		
		list.insLast ("D");
		list.insLast ("I");
		list.printList ();
	}
}