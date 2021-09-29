boolean rectOverlap(Point l1, Point r1, Point l2, Point r2){
   
  
    // check if a corner of 1 is inside 2
    
    if(l1.x >= l2.x && l1.x <= r2.x && l1.y >= l2.y && l1.y <= r2.y){
      return true;
    }// top left corner in other l1.x, l1.y
    
    if(l1.x >= l2.x && l1.x <= r2.x && r1.y >= l2.y && r1.y <= r2.y){
      return true;
    }// bottmo left corner in other l1.x, r1.y
    
    if(r1.x >= l2.x && r1.x <= r2.x && r1.y >= l2.y && r1.y <= r2.y){
      return true;
    }// bottom right corner in other
    
    if(r1.x >= l2.x && r1.x <= r2.x && l1.y >= l2.y && l1.y <= r2.y){
      return true;
    }// top right corner in other r1.x, l1.y
    
    
    if(l1.x>l2.x && r1.x<r2.x && l1.y<l2.y && r1.y> r2.y)return true;
    

    return false;
}
