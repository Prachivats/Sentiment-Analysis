/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Tweet;
/**
 *
 * @author MTS
 */
import edu.stanford.nlp.tagger.maxent.MaxentTagger;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.StringTokenizer;
/**
 *
 * @author USER
 */
public class Tweetana {
    

public String insert() throws Exception
{
FileReader fr=new FileReader("C:\\Users\\USER\\Documents\\NetBeansProjects\\profinal\\sid.txt");
BufferedReader br=new BufferedReader(fr);
String num="";
String str="";
String c="";
String tan="";
String pos[]=new String[10000];
float sum=0;
HashMap hm=new HashMap();
HashMap hp=new HashMap();
//String s[]=new String[5000];
ArrayList<String> s = new ArrayList<String>();
//String r[]=new String[500];
ArrayList<String> r = new ArrayList<String>();
String tag="";
ArrayList<String> tag_dup = new ArrayList<String>();
//String pra[]=new String[5000];
//ArrayList<String> arr = new ArrayList<String>();
char arr[]=new char[2000];
ArrayList<String> pra = new ArrayList<String>();
int i=0,index;
int j=0, inten=0;
int k=0,t=0,pq=0,w=0,y=0;
float intp=0,mulpol=0, into=0;
while((str=br.readLine())!= null)
{
System.out.print(str);
//s[j]= str;

s.add(j, str);
//System.out.println(s[j]);
 //String[] elements = (String[])s.toArray();
 
        // Print Object content
        //for (int a = 0; a < elements.length; a++) {
           // System.out.println(elements[a]);
//System.out.println(s.length);

 //arr=s[j].toCharArray();
           //arr= elements.toCharArray();
//char arr[]=s[w].toCharArray();
            //String[] sst=(String[])s.toArray();
            arr=str.toCharArray();
            
     for(y=0;y<arr.length;y++)
     {
    if(arr[y]=='\''|| arr[y]=='#'|| arr[y]=='.'|| arr[y]=='!')
        arr[y]=' ';
        str=new String(arr);
          //ArrayList<String> citylist= new ArrayList<String>(Arrays.asList(citynames));
         // ArrayList<String> s[j] = Arrays.asList(sst[j]);
        s.add(j,str);
    }

//tan=s[j];
System.out.println("i m inside2 ");
MaxentTagger tagger=new MaxentTagger("C:\\Users\\USER\\Documents\\NetBeansProjects\\profinal\\lib\\bidirectional-distsim-wsj-0-18.tagger");
System.out.println("i m inside1 ");
 tag=tagger.tagString(str);
 tag_dup.add(j,tag);
 
  System.out.println("i m inside ");
 System.out.println("i m inside yaggggggggggggg");
System.out.println(tag);

j++;
}

System.out.println(j);

int a=j;
int u=0;
int ii=0;

for(j=0;j<a;j++)
{   tag=tag_dup.get(j);
//System.out.println(tag[j]);
 
StringTokenizer tk = new StringTokenizer(tag);
System.out.println("---- Split by space ------");
k=0;
		while (tk.hasMoreElements()) 
		{         
			
			r.add(k,tk.nextElement().toString());
                        
			//System.out.println(r[k]);
			
                        /*char arr1[]=r[k].toCharArray();
                        
                        for(pq=0;pq<arr1.length;pq++)
                            {   if(arr1[pq]=='/')
                                arr1[pq]=' ';
                            }
                            r[k]=new String(arr1);*/
                        k++; 
		}

                t=k;
                
                for(int iii=0;iii<t;iii++)
                {
                StringTokenizer tk2 = new StringTokenizer(r.get(iii),"/");
                        System.out.println("---- Split by / ------");
                        while (tk2.hasMoreElements()) 
                        {
                            pra.add(ii,tk2.nextElement().toString());
                            //System.out.println(pra[ii]);
                            ii++;
                           
                        }
                }
}
               /* for(pq=0;pq<k;pq++)
                { System.out.println(r[pq]);
                
                }
                for(pq=0;pq<k;pq++)
{
//System.out.println(tag[j]);
StringTokenizer tk1 = new StringTokenizer(r[pq]);
System.out.println("---- Split by space ------");
		while (tk1.hasMoreElements()) 
		{
			
			r[pq]=(tk1.nextElement()).toString();
			System.out.println(r[pq]);
			
                }*/
System.out.println("hiiiiiiiiiiiiiii");
                       // for(i=0;i<ii;i++)
                         //       {
                                   Object[] elements = pra.toArray();
 
        // Print Object content
        for (int aa = 0; aa < elements.length; aa++) {
            System.out.println(elements[aa]);  
                                //   System.out.println(pra[i]); 
                                }

//System.out.println("i m bove data");
try
{   Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "tanya");
          Statement p   = con.createStatement();
for(i=0;i<ii;i++)
{
        String d = " t";
        //System.out.println(r[i]);
        //for(j=0;j<t;j++)
        //{
          if(pra.get(i).equals("JJ")||pra.get(i).equals("JJS")||pra.get(i).equals("JJR")) 
          
          {    System.out.print("I am inside");  
              d=pra.get(i-1) ;
          } 
         // else if(s[i]==":)")
           //   d=s[j];
 
      // 
 //String d="classic";
 System.out.println("data is "+d);
 // Statement  p = con.createStatement();

        ResultSet rs = p.executeQuery("SELECT polarity FROM opdict WHERE opinion = '" +d+ "'");
 //ResultSet dup_rs=rs;
        int o=1;
        Set st=hm.entrySet();
Iterator ie=st.iterator();
int oo=0;

  if(hm.containsKey(d))
                {   //System.out.print("IamInside");
                    String sss=Integer.toString(o);
                    d=d+sss;
                    System.out.print(d);
                    o++;
                    oo=1;
                }
        while (rs.next()) 
           {  System.out.print("I am inside");
                System.out.println(rs.getFloat("polarity"));
                System.out.println(i-1);
              
                hm.put(d,new Integer(i-1))  ;    
                 
                hp.put(d,new Float(rs.getFloat("polarity")))  ;             
            }

}
Set set=hm.entrySet();
Iterator ite=set.iterator();
while (ite.hasNext())
{
        Map.Entry me =(Map.Entry)ite.next();
        System.out.print(me.getKey()+":");
        System.out.println(me.getValue());
}
Set setp=hp.entrySet();
Iterator itp=setp.iterator();
while (itp.hasNext())
{   Map.Entry mep =(Map.Entry)itp.next();
   System.out.print(mep.getKey()+":");
   System.out.println(mep.getValue());
}
Set seti=hm.entrySet();
Set setip=hp.entrySet();

Iterator iti=seti.iterator();
Iterator itip=setip.iterator();
while (iti.hasNext())
{
        Map.Entry mei =(Map.Entry)iti.next();
          Map.Entry meip =(Map.Entry)itip.next();
        System.out.print(mei.getKey()+":");
        index=(Integer)(mei.getValue());
             String d_dup=pra.get(index-2);
           ResultSet rs1 = p.executeQuery("SELECT polarity FROM indict WHERE intensifier = '" +d_dup+ "'");
            while (rs1.next()) 
           { 
                System.out.println(rs1.getFloat("polarity"));
                float poli=rs1.getFloat("polarity");
                String opi=mei.getKey().toString();
                if(opi==meip.getKey().toString())
                {   //float pol=(Float)meip.getValue();
                    //float po;
                    //po=pol*poli;
                    hp.put(opi,(Float)meip.getValue()*poli);
                   // System.out.println(po);
                }

           }
}
                        
Set setr=hp.entrySet();
Iterator itr=setp.iterator();
while (itr.hasNext())
{   Map.Entry mer =(Map.Entry)itr.next();
    System.out.print(mer.getKey()+":");
    System.out.println(mer.getValue());
    sum+=(Float)mer.getValue();
    



          
    
}
System.out.println(sum);
num=String.valueOf(sum);


fr.close();
br.close();


}
catch(Exception e)
{
 System.out.println(e);   
}
//insert(sum);
        

//return num;


//public static String insert(float t)
return num;

}
}








