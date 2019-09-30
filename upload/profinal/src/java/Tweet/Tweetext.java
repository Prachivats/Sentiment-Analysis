/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Tweet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

/**
 *
 * @author USER
 */
public class Tweetext extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ConfigurationBuilder cb = new ConfigurationBuilder();
        cb.setDebugEnabled(true)
        .setOAuthConsumerKey("koRtUViFddns5EySOEpIfi1vS")
        .setOAuthConsumerSecret("FdCyRGme9uicMT7JAus3TbDuvrr5xcB5ShS1ds2Ef6KPmfoCTl")
        .setOAuthAccessToken("1889606203-HQh1ZHuYpGj5zyEnuFu4Nja5HfJocsTuKE8O9g5")
        .setOAuthAccessTokenSecret("VPi82WkRxmvT4Mz9mNQ952zQm2Ppl4zjazCIABMv4oYJA");
      // PrintWriter tweetWriter = response.getWriter();
        PrintWriter tweetWriter1 = response.getWriter();
        PrintWriter tweetWriter = null ;
            /* TODO output your page here. You may use following sample code. */
           //tweetWriter.println("hy");
           String s1=request.getParameter("p3");
        //String s1="FiftyShadesofGrey";
           try{
        TwitterFactory tf = new TwitterFactory(cb.build());
        Twitter twitter = tf.getInstance();
        //tweetWriter.println(s1);
        Query query = new Query(s1);
        query.lang("en");
        query.setCount(20);
        query.setSince("2001-01-01");
        query.setUntil("2015-04-15");
        QueryResult result = twitter.search(query);
        //tweetWriter.println(s1);
        tweetWriter1.println("a");
        
            tweetWriter= new PrintWriter(new FileOutputStream("C:\\Users\\USER\\Documents\\NetBeansProjects\\profinal\\the kite runner.txt",true));
        do{ tweetWriter1.println("a");
        
            List<Status> tweets = result.getTweets();
            tweetWriter1.println("Number of tweets:"+ tweets.size());
          
            tweetWriter1.println(s1);
            for (Status tweet : tweets ) 
            {
                tweetWriter.println(tweet.getUser().getScreenName() + ":" + tweet.getText());
                tweetWriter.println();
                tweetWriter.flush();
            }
           /* if(tweets.size()>=20)
            { query=null;
                break;
              
            }*/
            //query=null;
            query = result.nextQuery();
            if(query != null)
            {
                result = twitter.search(query);
            }
            
        }while(query != null);
        }catch(Exception ex)
        {
            ex.printStackTrace();
        }
        finally
        {
            if(tweetWriter != null )
            {
                tweetWriter.close();
                response.sendRedirect("gettweets.jsp");
            }
        }
    

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
