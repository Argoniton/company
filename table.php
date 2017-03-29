<?php 
	
//This question is old, but I got here looking for a way to find a given query its field names in a dynamic way (not necessarily only the fields of a table). And since people keep pointing this as the answer for that given task in other related questions, I'm sharing the way I found it can be done, using Gavin Simpson's tips:

//Function to generate a HTML table from a SQL query
function display_table($obConn,$sql)
{
    $rsResult = mysqli_query($obConn, $sql) or die(mysqli_error($obConn));
    if(mysqli_num_rows($rsResult)>0)
    {
        //We start with header. >>>Here we retrieve the field names<<<
        echo "<table width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"0\"><tr align=\"center\" bgcolor=\"#CCCCCC\">";
        $i = 0;
        while ($i < mysqli_num_fields($rsResult)){
           $field = mysqli_fetch_field_direct($rsResult, $i);
           $fieldName=$field->name;
           echo "<td><strong>$fieldName</strong></td>";
           $i = $i + 1;
        }
        echo "</tr>"; 
        //>>>Field names retrieved<<<

        //We dump info
        $bolWhite=true;
        while ($row = mysqli_fetch_assoc($rsResult)) {
            echo $bolWhite ? "<tr bgcolor=\"#CCCCCC\">" : "<tr bgcolor=\"#FFF\">";
            $bolWhite=!$bolWhite;
            foreach($row as $data) {
                echo "<td>$data</td>";
            }
            echo "</tr>";
        }
        echo "</table>";
    }
}
?>