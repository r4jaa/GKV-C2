#include <GL/glut.h>
#include <cmath>

void display() {
    glClear(GL_COLOR_BUFFER_BIT);

    // *** Badan mobil ***
    glColor3f(1.0, 0.0, 0.0);
    glBegin(GL_POLYGON);
        glVertex2f(-0.4, -0.1);
        glVertex2f(0.4, -0.1);
        glVertex2f(0.4, 0.1);
        glVertex2f(-0.4, 0.1);
    glEnd();

    // *** Atap mobil ***
    glColor3f(1.0, 0.0, 0.0);
    glBegin(GL_POLYGON);
        glVertex2f(-0.2, 0.1);
        glVertex2f(0.2, 0.1);
        glVertex2f(0.15, 0.25);
        glVertex2f(-0.15, 0.25);
    glEnd();

    // *** Jendela depan ***
    glColor3f(0.5, 0.8, 1.0);
    glBegin(GL_POLYGON);
        glVertex2f(-0.13, 0.12);
        glVertex2f(0.13, 0.12);
        glVertex2f(0.1, 0.22);
        glVertex2f(-0.1, 0.22);
    glEnd();

    // *** Knalpot ***
    glColor3f(0.5, 0.5, 0.5);
    glBegin(GL_POLYGON);
        glVertex2f(0.42, -0.08);
        glVertex2f(0.47, -0.08);
        glVertex2f(0.47, -0.05);
        glVertex2f(0.42, -0.05);
    glEnd();

    // *** Roda mobil ***
    glColor3f(0.0, 0.0, 0.0);
    float radius = 0.07;
    int num_segments = 100;

    glPushMatrix();
    glTranslatef(-0.25, -0.15, 0); 
    glBegin(GL_POLYGON);
    for (int i = 0; i < num_segments; i++) {
        float theta = 2.0f * 3.1415926f * float(i) / float(num_segments);
        float x = radius * cos(theta);
        float y = radius * sin(theta);
        glVertex2f(x, y);
    }
    glEnd();
    glPopMatrix();

    glPushMatrix();
    glTranslatef(0.25, -0.15, 0); 
    glBegin(GL_POLYGON);
    for (int i = 0; i < num_segments; i++) {
        float theta = 2.0f * 3.1415926f * float(i) / float(num_segments);
        float x = radius * cos(theta);
        float y = radius * sin(theta);
        glVertex2f(x, y);
    }
    glEnd();
    glPopMatrix();

    // *** Matahari ***
    glColor3f(1.0, 1.0, 0.0);
    glPushMatrix();
    glTranslatef(0.7, 0.7, 0); 
    glBegin(GL_POLYGON);
    for (int i = 0; i < num_segments; i++) {
        float theta = 2.0f * 3.1415926f * float(i) / float(num_segments);
        float x = 0.15 * cos(theta);
        float y = 0.15 * sin(theta);
        glVertex2f(x, y);
    }
    glEnd();
    glPopMatrix();

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
    glutCreateWindow("Mobil 2D dengan Objek Tambahan");
    init();
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}

