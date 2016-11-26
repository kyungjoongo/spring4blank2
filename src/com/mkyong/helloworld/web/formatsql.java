package com.mkyong.helloworld.web;
/*
 * Date: 2010-11-9
 * Time: 9:38:43
 */


import gudusoft.gsqlparser.EDbVendor;
import gudusoft.gsqlparser.TGSqlParser;

import gudusoft.gsqlparser.pp.para.GFmtOptFactory;
import gudusoft.gsqlparser.pp.stmtformatter.FormatterFactory;
import gudusoft.gsqlparser.pp.para.GFmtOpt;






public class formatsql {

    public static void main(String args[])
     {

    	
    	
        TGSqlParser sqlparser = new TGSqlParser(EDbVendor.dbvoracle);

         sqlparser.sqltext = "select col1, col2,sum(col3) from table1, table2 where col4 > col5 and col6= 1000";

        int ret = sqlparser.parse();
        if (ret == 0){
            GFmtOpt option = GFmtOptFactory.newInstance();
            String result = FormatterFactory.pp(sqlparser, option);
            System.out.println(result);
        }else{
            System.out.println(sqlparser.getErrormessage());
        }
     }
    
    

}