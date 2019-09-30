/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Tweet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.RateLimitStatus;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.auth.OAuth2Token;
import twitter4j.conf.ConfigurationBuilder;

/**
 *
 * @author MTS
 */
public class Tweetcoll extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
private static final String CONSUMER_KEY = "ZbL53UdexkGPdJyw9z3LOoJD8"; 
private static final String CONSUMER_SECRET = "yJmVvlomvdjHQMM6H4ltou22YdSvf5lcZNnGt0jkNsWiZjeU9L"; 

private static final int TWEETS_PER_QUERY = 10;
private static final int MAX_QUERIES = 2;
private static final String SEARCH_TERM = ""; 
public static String cleanText(String text) 
{  text = text.replace("\n", "\\n");
 text = text.replace("\t", "\\t");
 return text;
}
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
{
        response.setContentType("text/html;charset=UTF-8");
       int totalTweets = 0;
long maxID = -1;
 Twitter twitter = getTwitter(); 
try 
{
     String s1=request.getParameter("p3");
    //String s1="Aliceinwonderland";
     String SEARCH_TERM = s1; 
Map<String, RateLimitStatus> rateLimitStatus = twitter.getRateLimitStatus("search"); 
RateLimitStatus searchTweetsRateLimit = rateLimitStatus.get("/search/tweets"); 
System.out.printf("You have %d calls remaining out of %d, Limit resets in %d seconds\n", searchTweetsRateLimit.getRemaining(), searchTweetsRateLimit.getLimit(), searchTweetsRateLimit.getSecondsUntilReset()); 
for (int queryNumber=0;queryNumber < MAX_QUERIES; queryNumber++) 
{ System.out.printf("\n\n!!! Starting loop %d\n\n", queryNumber);
if (searchTweetsRateLimit.getRemaining() == 0) { 
System.out.printf("!!! Sleeping for %d seconds due to rate limits\n", searchTweetsRateLimit.getSecondsUntilReset());
Thread.sleep((searchTweetsRateLimit.getSecondsUntilReset()+2) * 1000l); }
 Query q = new Query(SEARCH_TERM);
 q.setCount(TWEETS_PER_QUERY); 
q.setLang("en"); 
if (maxID != -1) { q.setMaxId(maxID - 1); }
QueryResult r = twitter.search(q);
if (r.getTweets().size() == 0) { break;}
 PrintWriter tweetWriter = null;
 PrintWriter tweetWriter1 = response.getWriter();
  
        //tweetWriter = new PrintWriter(new File("tweets.txt"));
  tweetWriter= new PrintWriter(new FileOutputStream("C:\\Users\\USER\\Documents\\NetBeansProjects\\profinal\\sid.txt",false));

for (Status s: r.getTweets()) { totalTweets++; 
 if (maxID == -1 || s.getId() < maxID)
 { maxID = s.getId(); } 
 tweetWriter.println(s.getUser().getScreenName() + ":" + s.getText());
  tweetWriter.println();
                tweetWriter.flush();
tweetWriter1.printf("At %s, @%-20s said: %s\n", s.getCreatedAt().toString(), s.getUser().getScreenName(), cleanText(s.getText())); 
} 
searchTweetsRateLimit = r.getRateLimitStatus();
 } 
response.sendRedirect("gettweets.jsp");
} 
catch (Exception e) 
{ 
System.out.println("That didn't work well...wonder why?"); e.printStackTrace(); } System.out.printf("\n\nA total of %d tweets retrieved\n", totalTweets); 
}

public static Twitter getTwitter()
 { OAuth2Token token; 
token = getOAuth2Token();
ConfigurationBuilder cb = new ConfigurationBuilder();
 cb.setApplicationOnlyAuthEnabled(true); 
cb.setOAuthConsumerKey(CONSUMER_KEY); cb.setOAuthConsumerSecret(CONSUMER_SECRET); cb.setOAuth2TokenType(token.getTokenType()); cb.setOAuth2AccessToken(token.getAccessToken()); 
return new TwitterFactory(cb.build()).getInstance();
 } 
public static OAuth2Token getOAuth2Token() 
{ OAuth2Token token = null;
 ConfigurationBuilder cb;
 cb = new ConfigurationBuilder();
 cb.setApplicationOnlyAuthEnabled(true); cb.setOAuthConsumerKey(CONSUMER_KEY).setOAuthConsumerSecret(CONSUMER_SECRET);
try {
 token = new TwitterFactory(cb.build()).getInstance().getOAuth2Token();
 }
 catch (Exception e)
 { System.out.println("Could not get OAuth2 token");
 e.printStackTrace();
 System.exit(0);
 } 
return token; 
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
