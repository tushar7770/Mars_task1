# Solution 4 :
## single quotes vs double quotes
if we give string in single quotes then if has some special character like $ , \n etc have no meaning  in single quotes they consider as plain text charater while when these are used in double quotes they have meaning like $ before variable provide its value , \n is newline <br/>

eq : Mars = 2 <br/>
input : echo '$Mars' <br/>
output: $Mars <br/>
input : echo "$Mars" <br/>
output: 2 <br/>

# Solution 5 :
## export
if we change any variable the shell will not be updated with that unit new shell session while with export we can update change in current shell.<br/>
so export rovername=vajra here rovername vajra updated in current shell
while<br/>
rovername=vajra here rovername vajra will be updated in new shell