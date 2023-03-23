import java.io.*;

// public class input_output {
//     public static void main(String args[]) {
//         try{
//             FileOutputStream fout = new FileOutputStream("file.txt");
//             String s = "Welecome to my jhatu vlogs" ;
//             byte b[] = s.getBytes();
//             fout.write(b);
//             fout.close();

//             FileInputStream fin = new FileInputStream("file.txt");
//             int i = 0 ;
//             while((i=fin.read())!=-1) {
//                 System.out.println((char)i);
//             }

//             System.out.println("Success");
//         } 
//         catch(Exception e ) {
//             System.out.println(e);
//         }
//     }
// }

// BUFFEREDEINPUTSTREAM
// public class input_output {
//     public static void main(String args[]){
//         try{
//             FileOutputStream fout = new FileOutputStream("file.txt");
//             BufferedOutputStream bout = new BufferedOutputStream(fout);
//             String s = "WELCOME TO MY JHATU VLOGS ";
//             byte b[] = s.getBytes();
//             bout.write(b);
//             bout.flush();
//             bout.close();
//             fout.close();
//             System.out.println("Success");
//         }
//         catch(Exception e ){
//             System.out.println("ERROR OCCURED");

//         }
//     }
// }

// BUFFEREDINPUTSTREAM 
// public class input_output {
//     public static void main(String args[]){
//         try{
//             FileInputStream fout = new FileInputStream("file.txt");
//             BufferedInputStream bout = new BufferedInputStream(fout);
//             // String s = "WELCOME TO MY JHATU VLOGS ";
//             // byte b[] = s.getBytes();
//             int i ; 
//             while((i = bout.read())!= -1){
//                 System.out.println((char)i);
//             }
//             bout.close();
//             fout.close();
//             // System.out.println("Success");
//         }
//         catch(Exception e ){
//             System.out.println("ERROR OCCURED");

//         }
//     }
// }

// WRITER 
// public class input_output {
//     public static void main(String args[]){
//         try {
//             Writer w = new FileWriter("file.txt");
//             String s = "HEY GUYS" ;
//             w.write(s);
//             w.close();
//             System.out.println("SUCCESS");
//         }
//         catch(IOException e){
//             System.out.println(e);
//         }
//     }
// }

// READER 
// public class input_output {
//     public static void main(String args[]){
//         try {
//             Reader w = new FileReader("file.txt");
//             int i;
//             String s = "" ;
//             while((i=w.read())!= -1){
//                 s = s + (char)i ; 
//             }
//             System.out.println(s);
//             w.close();
//         }
//         catch(IOException e){
//             System.out.println(e);
//         }
//     }
// }

// READ FROM USER 
// public class input_output {
//     public static void main(String args[]) throws Exception {
//         InputStreamReader r = new InputStreamReader(System.in);
//         BufferedReader br = new BufferedReader(r);
//         System.out.println("Enter your name");
//         String name = br.readLine();
//         System.out.println("Welcome " + name);
//     }
// }

//COPYING DATA FROM ONE FILE TO ANOTHER FILE 
// public class input_output{

//     public static void main(String args[]){
//         try{
//             FileReader fr = new FileReader("file.txt");
//             FileWriter fw = new FileWriter("file_output.txt");

//             int i ;
//             String s = "" ; 
//             while((i=fr.read())!= -1){
//                 s = s + (char)i ;
//             }
//             fw.write(s);
//             fr.close();
//             fw.close();
//             System.out.println("BOTH READING AND WRITING IS DONE");

//         }

//         catch(IOException e){
//             System.out.println(e);
//         }
//     }
// }

// PIPEDREADER & PIPEDWRITER
// public class input_output
// {
//     public static void main(String[] args) throws IOException
//     {
//         PipedReader geek_reader = new PipedReader();
//         PipedWriter geek_writer = new PipedWriter();
  
//         geek_reader.connect(geek_writer);
  
//         geek_writer.write(71);
//         geek_writer.write(69);
//         geek_writer.write(69);
//         geek_writer.write(75);
//         geek_writer.write(83);
  
//         System.out.println("Stream is ready to be read : " + geek_reader.ready());
  
//         System.out.println("Use of read(carray, offset, maxlen) : ");
//         char[] carray = new char[5];
//         geek_reader.read(carray, 0, 5);
  
//         for (int i = 0; i < 5; i++)
//         {
//             System.out.print(carray[i]);
//         }
  
//         System.out.println("\nClosing the stream");
//         geek_reader.close();
//     }
// }


//PIPEDWRITER AND PIPEDREADER 
// public class input_output{
//     public static void main(String args[]) throws IOException {
//         PipedReader pr = new PipedReader();
//         PipedWriter pw = new PipedWriter();

//         pr.connect(pw);

//         pw.write(65);
//         pw.write("D");

        // int i ; 
        // while((i = pr.read())!= -10){
        //     System.out.println((char)i);
        // }

        // char[] ch = new char[5];
        // pr.read(ch , 0 ,5);
        // for(int i =0 ; i<2 ;i++ ){
        //     System.out.println(ch[i]);
        // }
//     }
// }