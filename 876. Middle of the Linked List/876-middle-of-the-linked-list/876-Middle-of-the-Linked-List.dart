/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? middleNode(ListNode? head) {

    int lenghtOfLinkedList = 0;
    ListNode? currentNode = head;

    while(currentNode != null){
        lenghtOfLinkedList++;
        currentNode = currentNode.next;
    }

    print("lenghtOfLinkedList$lenghtOfLinkedList");

    int middleNode = lenghtOfLinkedList ~/ 2;

   ListNode? theMiddleNode = head;
     for(int i=0;i<middleNode;i++){
         theMiddleNode = theMiddleNode!.next;
     }

    return theMiddleNode;

  }
}