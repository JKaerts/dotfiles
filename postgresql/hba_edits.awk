BEGIN {RS = "\r?\n"}
{
  if ($5 == "md5" ) {
    $5 = "trust"; 
	printf("%-7s %-15s %-15s %-23s %s\n", $1, $2, $3, $4, $5);
  }
  else {
    print $0;
  }
}
