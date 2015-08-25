<CFSCRIPT>
    myQry = new Query(); // new query object     
    myQry.setSQL("select bookid, title, genre from app.books where bookid = :bookid"); //set query
    myQry.addParam(name="bookid",value="5",CFSQLTYPE="CF_SQL_INT"); // add query param
    qryRes = myQry.execute(); // execute query
    writedump(qryRes.getResult().recordcount, true); // get resultcount
    writedump(qryRes.getResult(), false); // dump result
    writeoutput('<BR>');
</CFSCRIPT>

<cfscript>
    myQry = new Query(); // new query object 
    myQry.setSQL("select bookid, title, genre from app.books"); //set query
    qryRes = myQry.execute(); // execute query 
    writedump(qryRes.getResult().recordcount, true);// get resultcount
    writedump(qryRes.getResult(), false); // dump result
</cfscript>


<cfscript>
    myQry = new Query(datasource="cfartgallery", sql="select artid, artname, price from app.art").execute().getResult();
    writedump(myQry.recordcount, false); // get resultcount
    writedump(myQry, false); // dump result
</cfscript>


<cfscript>
    myQry = new Query(); // new query object     
    qryRes = myQry.execute(sql="select bookid, title, genre from app.books").getResult();     
    writedump(qryRes.recordcount, false); // get resultcount
    writedump(qryRes, false); // dump result
</cfscript>
