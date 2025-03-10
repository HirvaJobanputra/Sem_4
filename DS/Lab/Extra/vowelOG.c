#include<stdio.h>
#include<string.h>
void main(){
    char name[]="hemangi";
    printf("The original string:\n%s\n",name);
      int i=0,k;
      int j=strlen(name);
    

        for(i=0, j=strlen(name)-1 ; i<j ; i++,j-- )
        {
                
            if(name[i]=='a' || name[i]=='e' || name[i]=='i' || name[i]=='o' || name[i]=='u' && name[i]!=name[j] )
            {
                char temp = name[i];
                name[i] = name[j];
                name[j] = temp;
            }
            if (name[j]=='a' || name[j]=='e' || name[j]=='i' || name[j]=='o'  || name[j]=='u' && name[i]!=name[j])
            {
                char temp = name[i];
                name[i] = name[j];
                name[j] = temp;
            }
        }

        printf("\nSwapped Name: %s",name);
}