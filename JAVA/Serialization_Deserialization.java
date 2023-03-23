import java.io.*;

// class Demo implements Serializable
// {
// 	public int a;
// 	public String b;

// 	public Demo(int a, String b)
// 	{
// 		this.a = a;
// 		this.b = b;
// 	}

// }

// class Serialization_Deserialization 
// {
// 	public static void main(String args[])
// 	{
// 		Demo object = new Demo(1, "geeksforgeeks");
// 		String filename = "file.txt";
		
// 		// Serialization
// 		try
// 		{
// 			FileOutputStream file = new FileOutputStream(filename);
// 			ObjectOutputStream out = new ObjectOutputStream(file);
			
// 			out.writeObject(object);
			
// 			out.close();
// 			file.close();
			
// 			System.out.println("Object has been serialized");

// 		}
		
// 		catch(IOException ex)
// 		{
// 			System.out.println("IOException is caught");
// 		}


// 		Demo object1 = null;

// 		// Deserialization
// 		try
// 		{
// 			FileInputStream file = new FileInputStream(filename);
// 			ObjectInputStream in = new ObjectInputStream(file);
			
// 			object1 = (Demo)in.readObject();
			
// 			in.close();
// 			file.close();
			
// 			System.out.println("Object has been deserialized ");
// 			System.out.println("a = " + object1.a);
// 			System.out.println("b = " + object1.b);
// 		}
		
// 		catch(IOException ex)
// 		{
// 			System.out.println("IOException is caught");
// 		}
		
// 		catch(ClassNotFoundException ex)
// 		{
// 			System.out.println("ClassNotFoundException is caught");
// 		}

// 	}
// }


// class demo implements Serializable{
// 	int id ;
// 	String name ;
// 	demo(int id , String name){
// 		this.id = id ;
// 		this.name = name ;
// 	}
// }

// class Serialization_Deserialization  {
	
// 	public static void main(String args[]){
		
// 		demo o1 = new demo(1,"anubhav");
// 		String filename = "file.txt";

// 		try{
// 			FileOutputStream fout = new FileOutputStream("filename");
// 			ObjectOutputStream f = new ObjectOutputStream(fout);

// 			f.writeObject(o1);

// 			fout.close();
// 			f.close();
// 		}
// 		catch(IOException e){
// 			System.out.println(e);
// 		}

// 		demo o2 = null ;

// 		try{
// 			FileInputStream fin = new FileInputStream("filename");
// 			ObjectInputStream f1 = new ObjectInputStream(fin);

// 			o2 = (demo)f1.readObject();

// 			fin.close();
// 			f1.close();

// 			System.out.println("SUCCESS");
// 			System.out.println("a = " + o2.id);
// 			System.out.println("SUCCESS");
// 		}
// 	}
// }