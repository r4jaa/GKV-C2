#include <GL/glut.h>
#include <cmath>

void display() {
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(0.0, 0.0, 1.0); 

    float radius = 0.5;
    int jumlahSegmen = 100;

    glBegin(GL_LINE_LOOP); 
    for (int i = 0; i < jumlahSegmen; i++) {
        float sudut = 2.0f * 3.1415926f * float(i) / float(jumlahSegmen);
        float x = radius * cos(sudut);
        float y = radius * sin(sudut);
        glVertex2f(x, y);
    }
    glEnd();

    glFlush();
}

void init() {
    glClearColor(1.0, 1.0, 1.0, 1.0); 
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(-1, 1, -1, 1);
}

int main(int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(500, 500);
    glutCreateWindow("Lingkaran OpenGL");
    init();
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}

