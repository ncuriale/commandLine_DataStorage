##########
#
#      Oakridge Soccer Lining Program
#                June 2011
#             Nathan Curiale
#
##########

#Variable List -- Just for personal knowledge
#0 -> # of times
#1 -> start up fee
#2 -> price
#3 -> total
@oakfoot[3];
@oakminis[3];
@STA[3];
@tourney[3];
$paint;
$subtotal;
$total;


do
{#Run through options
print "OAKRIDGE SOCCER LINING PROGRAM\n******************************\n";
print "What do you want to do?\n";
print "1. Enter lined field\n2. Enter start up fees\n3. Enter field prices\n4. Enter paint cost\n5. Enter specific # of times a field was lined\n6. Print the bill on this window.\n";
$i=<>;
chomp $i;
print "\n";
$cnt=0;
if ($i==1)
	{#Enter one field lined
	print "What field did you line?\n1. Oakridge Football\n2. Oakridge Minis\n3. STA\n4. Tournament\n";
	$field = <>;
	chomp $field;
	if ($field == 1)
		{open OAKFOOT, 'oakfoot.txt';
		while (<OAKFOOT>)
			{$oakfoot[$cnt]=$_;
			chomp $oakfoot[$cnt];
			$cnt++;
			}
		close OAKFOOT;
		$oakfoot[0]++;
		open OAKFOOT, '>oakfoot.txt';
		print OAKFOOT "$oakfoot[0]\n$oakfoot[1]\n$oakfoot[2]\n$oakfoot[3]\n";
		close OAKFOOT;
		}
	elsif ($field == 2)
		{open OAKMINIS, 'oakminis.txt';
		while (<OAKMINIS>)
			{$oakminis[$cnt]=$_;
			chomp $oakminis[$cnt];
			$cnt++;
			}
		close OAKMINIS;
		$oakminis[0]++;
		open OAKMINIS, '>oakminis.txt';
		print OAKMINIS "$oakminis[0]\n$oakminis[1]\n$oakminis[2]\n$oakminis[3]\n";
		close OAKMINIS;
		}
	elsif ($field == 3)
		{open STA, 'STA.txt';
		while (<STA>)
			{$STA[$cnt]=$_;
			chomp $STA[$cnt];
			$cnt++;
			}
		close STA;
		$STA[0]++;
		open STA, '>STA.txt';
		print STA "$STA[0]\n$STA[1]\n$STA[2]\n$STA[3]\n";
		close STA;
		}
	elsif ($field == 4)
		{open TOURNEY, 'tourney.txt';
		while (<TOURNEY>)
			{$tourney[$cnt]=$_;
			chomp $tourney[$cnt];
			$cnt++;
			}
		close TOURNEY;
		$tourney[0]++;
		open TOURNEY, '>tourney.txt';
		print TOURNEY "$tourney[0]\n$tourney[1]\n$tourney[2]\n$tourney[3]\n";
		close TOURNEY;
		}
	else 
		{print "Error, did not enter correct number\n";
		}
	}
elsif ($i==2)
	{#Enter start-up fee
	print "What field's start up fee would you like to enter?\n1. Oakridge Football\n2. Oakridge Minis\n3. STA\n";
	$field = <>;
	chomp $field;
	if ($field == 1)
		{open OAKFOOT, 'oakfoot.txt';
		while (<OAKFOOT>)
			{$oakfoot[$cnt]=$_;
			chomp $oakfoot[$cnt];
			$cnt++;
			}
		close OAKFOOT;
		print "What is the start up fee of Oakridge Football?\n";
		$a=<>;
		chomp$a;
		$oakfoot[1]=$a;
		open OAKFOOT, '>oakfoot.txt';
		print OAKFOOT "$oakfoot[0]\n$oakfoot[1]\n$oakfoot[2]\n$oakfoot[3]\n";
		close OAKFOOT;		
		}
	elsif ($field == 2)
		{open OAKMINIS, 'oakminis.txt';
		while (<OAKMINIS>)
			{$oakminis[$cnt]=$_;
			chomp $oakminis[$cnt];
			$cnt++;
			}
		close OAKMINIS;
		print "What is the start up fee of Oakridge Minis?\n";
		$a=<>;
		chomp $a;
		$oakminis[1]=$a;
		open OAKMINIS, '>oakminis.txt';
		print OAKMINIS "$oakminis[0]\n$oakminis[1]\n$oakminis[2]\n$oakminis[3]\n";
		close OAKMINIS;
		}
	elsif ($field == 3)
		{open STA, 'STA.txt';
		while (<STA>)
			{$STA[$cnt]=$_;
			chomp $STA[$cnt];
			$cnt++;
			}
		close STA;
		print "What is the start up fee of STA?\n";
		$a=<>;
		chomp $a;
		$STA[1]=$a;
		chomp $STA[1];
		open STA, '>STA.txt';
		print STA "$STA[0]\n$STA[1]\n$STA[2]\n$STA[3]\n";
		close STA;
		}
	else 
		{print "Error, did not enter correct number\n";
		}
	}
elsif ($i==3)
	{#Enter field price
	print "What field's price would you like to enter?\n1. Oakridge Football\n2. Oakridge Minis\n3. STA\n4. Tournament\n";
	$field = <>;
	chomp $field;
	if ($field == 1)
		{open OAKFOOT, 'oakfoot.txt';
		while (<OAKFOOT>)
			{$oakfoot[$cnt]=$_;
			chomp $oakfoot[$cnt];
			$cnt++;
			}
		close OAKFOOT;
		print "What is the price of Oakridge Football?\n";
		$a=<>;
		chomp$a;
		$oakfoot[2]=$a;
		open OAKFOOT, '>oakfoot.txt';
		print OAKFOOT "$oakfoot[0]\n$oakfoot[1]\n$oakfoot[2]\n$oakfoot[3]\n";
		close OAKFOOT;
		}
	elsif ($field == 2)
		{open OAKMINIS, 'oakminis.txt';
		while (<OAKMINIS>)
			{$oakminis[$cnt]=$_;
			chomp $oakminis[$cnt];
			$cnt++;
			}
		close OAKMINIS;
		print "What is the price of Oakridge Minis?\n";
		$a=<>;
		chomp $a;
		$oakminis[2]=$a;
		open OAKMINIS, '>oakminis.txt';
		print OAKMINIS "$oakminis[0]\n$oakminis[1]\n$oakminis[2]\n$oakminis[3]\n";
		close OAKMINIS;
		}
	elsif ($field == 3)
		{open STA, 'STA.txt';
		while (<STA>)
			{$STA[$cnt]=$_;
			chomp $STA[$cnt];
			$cnt++;
			}
		close STA;
		print "What is the price of STA?\n";
		$a=<>;
		chomp $a;
		$STA[2]=$a;
		open STA, '>STA.txt';
		print STA "$STA[0]\n$STA[1]\n$STA[2]\n$STA[3]\n";
		close STA;
		}
	elsif($field == 4)
		{open TOURNEY, 'tourney.txt';
		while (<TOURNEY>)
			{$tourney[$cnt]=$_;
			chomp $tourney[$cnt];
			$cnt++;
			}
		close TOURNEY;
		print "What is the price of the Tournament field?\n";
		$a=<>;
		chomp $a;
		$tourney[2]=$a;
		open TOURNEY, '>tourney.txt';
		print TOURNEY "$tourney[0]\n$tourney[1]\n$tourney[2]\n$tourney[3]\n";
		close TOURNEY;
		}
	else 
		{print "Error, did not enter correct number\n";
		}
	}
elsif ($i==4)
	{#Enter cost of paint
	print "What is the cost of paint for the summer?\n";
	$paint = <>;
	chomp $paint;
	}
elsif ($i==5)
	{#Enter specific # of times a field has been lined
	print "Which field would you like to enter for?\n1. Oakridge Football\n2. Oakridge Minis\n3. STA\n4. Tournament\n";
	$field = <>;
	chomp $field;
	if ($field == 1)
		{open OAKFOOT, 'oakfoot.txt';
		while (<OAKFOOT>)
			{$oakfoot[$cnt]=$_;
			chomp $oakfoot[$cnt];
			$cnt++;
			}
		close OAKFOOT;
		print "How many times in total have you lined Oakridge Football?\n";
		$a=<>;
		chomp $a;
		$oakfoot[0]=$a;
		open OAKFOOT, '>oakfoot.txt';
		print OAKFOOT "$oakfoot[0]\n$oakfoot[1]\n$oakfoot[2]\n$oakfoot[3]\n";
		close OAKFOOT;
		}
	elsif ($field == 2)
		{open OAKMINIS, 'oakminis.txt';
		while (<OAKMINIS>)
			{$oakminis[$cnt]=$_;
			chomp $oakminis[$cnt];
			$cnt++;
			}
		close OAKMINIS;
		print "How many times in total have you lined the Oakridge Minis?\n";
		$a=<>;
		chomp $a;
		$oakminis[0]=$a;
		open OAKMINIS, '>oakminis.txt';
		print OAKMINIS "$oakminis[0]\n$oakminis[1]\n$oakminis[2]\n$oakminis[3]\n";
		close OAKMINIS;
		}
	elsif ($field == 3)
		{open STA, 'STA.txt';
		while (<STA>)
			{$STA[$cnt]=$_;
			chomp $STA[$cnt];
			$cnt++;
			}
		close STA;
		print "How many times in total have you lined STA?\n";
		$a=<>;
		chomp $a;
		$STA[0]=$a;
		open STA, '>STA.txt';
		print STA "$STA[0]\n$STA[1]\n$STA[2]\n$STA[3]\n";
		close STA;
		}
	elsif ($field == 4)
		{open TOURNEY, 'tourney.txt';
		while (<TOURNEY>)
			{$tourney[$cnt]=$_;
			chomp $tourney[$cnt];
			$cnt++;
			}
		close TOURNEY;
		print "How many times in total have you lined Tournament fields?\n";
		$a=<>;
		chomp $a;
		$tourney[0]=$a;
		open TOURNEY, '>tourney.txt';
		print TOURNEY "$tourney[0]\n$tourney[1]\n$tourney[2]\n$tourney[3]\n";
		close TOURNEY;
		}
	else 
		{print "Error, did not enter correct number\n";
		}
	}
elsif ($i==6)
	{#Print out bill on the window
	
	#Assign Variables
	$cnt=0;
	open OAKFOOT, 'oakfoot.txt';
		while (<OAKFOOT>)
			{$oakfoot[$cnt]=$_;
			chomp $oakfoot[$cnt];
			$cnt++;
			}
		close OAKFOOT;
	$cnt=0;
	open OAKMINIS, 'oakminis.txt';
		while (<OAKMINIS>)
			{$oakminis[$cnt]=$_;
			chomp $oakminis[$cnt];
			$cnt++;
			}
		close OAKMINIS;
	$cnt=0;
	open STA, 'STA.txt';
		while (<STA>)
			{$STA[$cnt]=$_;
			chomp $STA[$cnt];
			$cnt++;
			}
		close STA;
	$cnt=0;
	open TOURNEY, 'tourney.txt';
		while (<TOURNEY>)
			{$tourney[$cnt]=$_;
			chomp $tourney[$cnt];
			$cnt++;
			}
		close TOURNEY;

	#Calculate field totals
	$oakfoot[3]=$oakfoot[1] + ($oakfoot[2]*$oakfoot[0]);
	$oakminis[3]=$oakminis[1] + ($oakminis[2]*$oakminis[0]);
	$STA[3]=$STA[1] + ($STA[2]*$STA[0]);
	$tourney[3]=$tourney[1] + ($tourney[2]*$tourney[0]);

	#Calculate Subtotal
	$subtotal = $oakfoot[3] + $oakminis[3] + $STA[3] + $tourney[3];

	#Calculate Total
	$total=$paint+$subtotal;
	
	print "2011 Field Lining\n\n\nField\tStart-Up(1X)\t+\t(  PRICE   x   # of times  )\t=\tTotal\n

Oak Football\t$oakfoot[1]\t+\t(  $oakfoot[2]\tx   $oakfoot[0]  )\t=\t$oakfoot[3]

Oak Minis\t$oakminis[1]\t+\t(  $oakminis[2]\tx   $oakminis[0]  )\t=\t$oakminis[3]

STA\t\t$STA[1]\t+\t(  $STA[2]\tx   $STA[0]  )\t=\t$STA[3]

Tournament\t$tourney[1]\t+\t(  $tourney[2]\tx   $tourney[0]  )\t=\t$tourney[3]

Subtotal\t\t\t\t\t\t=\t$subtotal

Paint\t\t\t\t\t\t\t=\t$paint

Total\t\t\t\t\t\t\t=\t$total\n";
	}
else
	{#Error with choice
	print "Error, did not enter correct number\n";
	}
print "Do you want to continue? (y or n)\n";
$k=<>;
chomp $k;
print "\n\n";
}
while ($k ne 'n');

#Calculate field totals
$oakfoot[3]=$oakfoot[1] + ($oakfoot[2]*$oakfoot[0]);
$oakminis[3]=$oakminis[1] + ($oakminis[2]*$oakminis[0]);
$STA[3]=$STA[1] + ($STA[2]*$STA[0]);
$tourney[3]=$tourney[1] + ($tourney[2]*$tourney[0]);

#Calculate Subtotal
$subtotal = $oakfoot[3] + $oakminis[3] + $STA[3] + $tourney[3];

#Calculate Total
$total=$paint+$subtotal;

#Print arrays to text files
open OAKFOOT, '>oakfoot.txt';
		print OAKFOOT "$oakfoot[0]\n$oakfoot[1]\n$oakfoot[2]\n$oakfoot[3]\n";
		close OAKFOOT;
open OAKMINIS, '>oakminis.txt';
		print OAKMINIS "$oakminis[0]\n$oakminis[1]\n$oakminis[2]\n$oakminis[3]\n";
		close OAKMINIS;
open STA, '>STA.txt';
		print STA "$STA[0]\n$STA[1]\n$STA[2]\n$STA[3]\n";
		close STA;
open TOURNEY, '>tourney.txt';
		print TOURNEY "$tourney[0]\n$tourney[1]\n$tourney[2]\n$tourney[3]\n";
		close TOURNEY;
		
#Print user friendly file
open FILE, '>lining.txt';
print FILE "2011 Field Lining\n\n\nField\tStart-Up(1X)\t+\t(  PRICE   x   # of times  )\t=\tTotal\n

Oak Football\t$oakfoot[1]\t+\t(  $oakfoot[2]\tx   $oakfoot[0]  )\t=\t$oakfoot[3]  

Oak Minis\t$oakminis[1]\t+\t(  $oakminis[2]\tx   $oakminis[0]  )\t=\t$oakminis[3] 	

STA\t\t$STA[1]\t+\t(  $STA[2]\tx   $STA[0]  )\t=\t$STA[3]

Tournament\t$tourney[1]\t+\t(  $tourney[2]\tx   $tourney[0]  )\t=\t$tourney[3]

Subtotal\t\t\t\t\t\t=\t$subtotal

Paint\t\t\t\t\t\t\t=\t$paint

Total\t\t\t\t\t\t\t=\t$total
";
close FILE;
