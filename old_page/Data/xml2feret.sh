cat $1 | grep -v directory | grep -v xml | awk -F"\"| |<" \
'{
	if ($2=="picture"){
		gndfilename=$4 ".gnd";
		printf("name="$4"."$7"\n") > gndfilename;
	}
	if ($2=="face"){ 
		printf("view="$4"\n") >> gndfilename;
	}
	if ($2=="left_eye"){
		printf("left_eye_coords= "$4" "$7"\n") >> gndfilename;
	}
	if ($2=="right_eye"){
		printf("right_eye_coords= "$4" "$7"\n") >> gndfilename;
	}
	if ($2=="nose_tip"){
		printf("nose_tip_coords= "$4" "$7"\n") >> gndfilename;
	}
	if ($2=="mouth_center"){
		printf("mouse_center_coords= "$4" "$7"\n") >> gndfilename;
	}
}'
