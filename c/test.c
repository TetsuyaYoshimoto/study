
#include<stdio.h>

typedef struct seiseki{
   int no;
   char *name;
   double ave;
}student;

int main(void){
   int i;
   struct seiseki seito1 = {1, "tako", 10.0};
   struct seiseki seito2[2] = {  {2, "tako", 20.0},
                                 {3, "tako", 30.0}};

   printf("%d, %s, %f\n", seito1.no, seito1.name, seito1.ave);

   for(i = 0;i < 2;i++){
      printf("%d, %s, %f\n", seito2[i].no, seito2[i].name, seito2[i].ave);
   }
   printf("%d \n", &seito1.name);
   printf("%s \n", seito1.name);
   return 0;
}
