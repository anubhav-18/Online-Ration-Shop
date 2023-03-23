
// CREATING THREAD BY EXTENDING
// public class Mythread extends Thread {
//     public void run(){
//         System.out.println("THREAD IS RUNNING");
//     }

//     public static void main(String args[]){
//         Mythread t1 = new Mythread();
//         t1.start();
//     }

// }


//CREATING THREAD BY IMPLEMENTING 
// public class Mythread implements Runnable{
// 	public void run(){
// 		System.out.println("THread is running");
// 	}
// 	public static void main(String args[]){
// 		Mythread t1 = new Mythread();
// 		Thread t = new Thread(t1);
// 		t.start();
// 	}
// }



// GETSTATE PROGRAM 1 
// public class Mythread implements Runnable {
//     public void run() {
//         System.out.println("THREAD IS RUNNING");        
//     }

//     public static void main(String args[]){
//         Mythread m1 = new Mythread();
//         Thread t1 = new Thread(m1);
//         t1.start();

//     }

// }

// class ABC implements Runnable {
//     public void run() {

//         try {

//             Thread.sleep(100);
//         } catch (InterruptedException ie) {
//             ie.printStackTrace();
//         }

//         System.out.println(
//                 "The state of thread t1 while it invoked the method join() on thread t2 -" + Mythread.t1.getState());

//         try {
//             Thread.sleep(200);
//         } catch (InterruptedException ie) {
//             ie.printStackTrace();
//         }
//     }
// }


// GETSTATE PROGRAM 2
// public class Mythread implements Runnable {
//     public static Thread t1;
//     public static Mythread obj;

//     public static void main(String argvs[]) {
//         obj = new Mythread();
//         t1 = new Thread(obj);

//         System.out.println("The state of thread t1 after spawning it - " + t1.getState());

//         t1.start();

//         System.out.println("The state of thread t1 after invoking the method start() on it - " + t1.getState());
//     }

//     public void run() {
//         ABC myObj = new ABC();
//         Thread t2 = new Thread(myObj);

//         System.out.println("The state of thread t2 after spawning it - " + t2.getState());
//         t2.start();

//         System.out.println("the state of thread t2 after calling the method start() on it - " + t2.getState());

//         try {
//             Thread.sleep(200);
//         } catch (InterruptedException ie) {
//             ie.printStackTrace();
//         }

//         System.out.println("The state of thread t2 after invoking the method sleep() on it - " + t2.getState());

//         try {
//             t2.join();
//         } catch (InterruptedException ie) {
//             ie.printStackTrace();
//         }
//         System.out.println("The state of thread t2 when it has completed it's execution - " + t2.getState());
//     }

// }



// PRIORITY PROGRAM + NAME using constructor 
// class Mythread extends Thread {
//     public void run(){
//         System.out.println("thread is running");
//     }
//     Mythread(String name){
// 		super(name);
//     }

//     public static void main(String args[]){

//         Mythread t1 = new Mythread("TERI");
//         Mythread t2 = new Mythread("MAA");
//         Mythread t3 = new Mythread("ki");

// 		System.out.println(" THREAD 1 : " + t1.getName());
//         System.out.println(" THREAD 2 : " + t2.getName());
//         System.out.println(" THREAD 3 : " + t3.getName());

//         System.out.println(" THREAD 1 PRIORITY: " + t1.getPriority());
//         System.out.println(" THREAD 2 PRIORITY: " + t2.getPriority());
//         System.out.println(" THREAD 3 PRIORITY: " + t3.getPriority());

//         t1.setPriority(MAX_PRIORITY);
//         t2.setPriority(MIN_PRIORITY);
//         t3.setPriority(NORM_PRIORITY);

//         System.out.println(" THREAD 1 PRIORITY: " + t1.getPriority());
//         System.out.println(" THREAD 2 PRIORITY: " + t2.getPriority());
//         System.out.println(" THREAD 3 PRIORITY: " + t3.getPriority());
        
//         Thread.currentThread().setPriority(7);
        

//     }
// }



// GETID PROGRAM
// class MultithreadingDemo extends Thread {
// 	public void run()
// 	{
// 		try {
// 			// Displaying the thread that is running
// 			System.out.println(
// 				"Thread " + Thread.currentThread().getId()
// 				+ " is running");
// 		}
// 		catch (Exception e) {
// 			// Throwing an exception
// 			System.out.println("Exception is caught");
// 		}
// 	}
// }

// // Main Class
// public class Mythread {
// 	public static void main(String[] args)
// 	{
// 		int n = 8; // Number of threads
// 		for (int i = 0; i < n; i++) {
// 			MultithreadingDemo object
// 				= new MultithreadingDemo();
// 			object.start();
// 		}
// 	}
// }

// setName() , getName() , getId() program 
// public class Mythread extends Thread{
// 	public void run(){
// 		System.out.println("Thread is running ");
// 	}

// 	public static void main(String args[]){
// 		Mythread t1 = new Mythread();
// 		Mythread t2 = new Mythread();
// 		Mythread t3 = new Mythread();

// 		System.out.println("NAME OF T1: " + t1.getName());
// 		System.out.println("NAME OF T2: " + t2.getName());
// 		System.out.println("NAME OF T3: " + t3.getName());
// 		System.out.println("ID OF T1: " + t1.getId());
// 		System.out.println("ID OF T2: " + t2.getId());
// 		System.out.println("ID OF T3: " + t3.getId());


// 		t1.setName("THREAD1 ");
// 		t2.setName("THREAD2 ");
// 		t3.setName("THREAD3 ");
		
// 		System.out.println("AFTER CHANGING NAME OF T1: " + t1.getName());
// 		System.out.println("AFTER CHANGING NAME OF T2: " + t2.getName());
// 		System.out.println("AFTER CHANGING NAME OF T3: " + t3.getName());

// 	}
// }

// GARBAGE COLLECTION gc() METHOD
// public class TestGarbage1{  
// 	public void finalize(){System.out.println("object is garbage collected");}  
// 	public static void main(String args[]){  
// 	 TestGarbage1 s1=new TestGarbage1();  
// 	 TestGarbage1 s2=new TestGarbage1();  
// 	 s1=null;  
// 	 s2=null;  
// 	 System.gc();  
// 	}  
//    }  