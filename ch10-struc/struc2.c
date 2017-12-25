struct tag_student {
  char *name;
  unsigned int age;
  unsigned int u_code;
};

struct tag_student stu_jerry; // data object
struct tag_student stu_tom;   // data object

//--------------------------

typedef struct tag_student Student;
Student trump; // data object

//--------------------------

struct tag_node {
  void * contents;
  struct tag_node *next;
};

typedef struct tag_node Node;

//--------------------------

typedef struct tag_btree_node TreeNode;

struct tag_btree_node {
  void * contents;
  TreeNode *lchild;
  TreeNode *rchild;
};


int main(int argc, char *argv[]) { 
  return 0; 

}
