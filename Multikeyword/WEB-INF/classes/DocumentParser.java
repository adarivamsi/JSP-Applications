package com.vector.space.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.sql.*;
import databaseconnection.*;

public class DocumentParser {

int c=0;
Vector v=new Vector();
    //This variable will hold all terms of each document in an array.
    private List<String[]> termsDocsArray = new ArrayList<String[]>();
    private List<String> allTerms = new ArrayList<String>(); //to hold all terms
    private List<double[]> tfidfDocsVector = new ArrayList<double[]>();

    /**
     * Method to read files and store in array.
     * @param filePath : source file path
     * @throws FileNotFoundException
     * @throws IOException
     */
    public void parseFiles(String filePath) throws FileNotFoundException, IOException {
        File[] allfiles = new File(filePath).listFiles();
        BufferedReader in = null;
        for (File f : allfiles) {
            if (f.getName().endsWith(".txt")) {
				v.add(f.getName());
                in = new BufferedReader(new FileReader(f));
                StringBuilder sb = new StringBuilder();
                String s = null;
//							System.out.println(f.getName());
                while ((s = in.readLine()) != null) {
                    sb.append(s);
                }
                String[] tokenizedTerms = sb.toString().replaceAll("[\\W&&[^\\s]]", "").split("\\W+");   //to get individual terms
                for (String term : tokenizedTerms) {
                    if (!allTerms.contains(term)) {  //avoid duplicate entry
                        allTerms.add(term);
                    }
                }
											//System.out.println(f.getName());
//									System.out.println(tokenizedTerms);
                termsDocsArray.add(tokenizedTerms);
            }
        }

    }

    /**
     * Method to create termVector according to its tfidf score.
     */
    public void tfIdfCalculator() {
        double tf; //term frequency
        double idf; //inverse document frequency
        double tfidf; //term requency inverse document frequency        
        for (String[] docTermsArray : termsDocsArray) {
            double[] tfidfvectors = new double[allTerms.size()];
            int count = 0;
            for (String terms : allTerms) {
                tf = new TfIdf().tfCalculator(docTermsArray, terms);
                idf = new TfIdf().idfCalculator(termsDocsArray, terms);
				//System.out.println("tf=="+tf);
					//			System.out.println("idf=="+idf);
                tfidf = tf * idf;
				//System.out.println("tfidf=="+tfidf);
                tfidfvectors[count] = tfidf;
                count++;
            }

            tfidfDocsVector.add(tfidfvectors);  //storing document vectors;            
        }
    }

    /**
     * Method to calculate cosine similarity between all the documents.
     */
    public void getCosineSimilarity() {

		try{
				Connection con = databasecon.getconnection();
				Statement st=con.createStatement();
				st.executeUpdate("delete from tfidf");


					for (int i = 0; i < tfidfDocsVector.size(); i++) {
//						c++;
					    for (int j = 0; j < tfidfDocsVector.size(); j++) {

					    System.out.println("between " +v.get(i)+ " and " + v.get(j) + "  =  "
                                   + new CosineSimilarity().cosineSimilarity(tfidfDocsVector.get(i), tfidfDocsVector.get(j)));
								 st.executeUpdate("insert into tfidf values('"+v.get(i)+"','"+v.get(j)+"',"+new CosineSimilarity().cosineSimilarity(tfidfDocsVector.get(i), tfidfDocsVector.get(j))+")");




            }

//System.out.println("c=="+c);
			st.executeUpdate("delete from tfidf where f1!='0.txt'");
						st.executeUpdate("delete from tfidf where f1='0.txt' and f2='0.txt'");
        }
    }

				catch(Exception e){System.out.println(e);}

}

}
