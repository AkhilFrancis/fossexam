read -p "Enter n" n
for((i=n+1; i>n; i++));do
	let sum=0
	let j=i
	while((! $j == 0));do
        let r=j%10
	let sum=sum*10+r
	let j=j/10
	done

	if((sum==i));then
		let flag=0
		for(( k=2;k<sum/2;k++));do
		 if(( i%k==0));then
			let flag=1
			break
		 fi
		done
		if((flag==0));then
		 echo $sum
		 exit
		
		fi
	fi
done
