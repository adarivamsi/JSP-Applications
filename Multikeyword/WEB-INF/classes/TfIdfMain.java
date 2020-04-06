package com.vector.space.model;
import java.io.FileNotFoundException;
import java.io.IOException;

public class TfIdfMain {

	 public static void main() throws FileNotFoundException, IOException
    {
        DocumentParser dp = new DocumentParser();
          dp.parseFiles("D://Trapdoor Data/Files");
      dp.tfIdfCalculator(); //calculates tfidf
        dp.getCosineSimilarity(); //calculated cosine similarity   
    }



    public static void main(String args[]) throws FileNotFoundException, IOException
    {
        DocumentParser dp = new DocumentParser();
        dp.parseFiles("D://Trapdoor Data/Files");
        dp.tfIdfCalculator(); //calculates tfidf
        dp.getCosineSimilarity(); //calculated cosine similarity   
    }
}
