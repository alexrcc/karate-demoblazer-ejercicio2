Ejercicio 2 - Karate.

Por: Alex Condoy

1. Prerequisitos:

    - Sistema Operativo Windows 10
    - IDE IntelliJ version 2023.2
    - Gradle 7.6 (debe estar en la variable de entorno)
    - JDK versión 15 (debe estar en la variable de entorno)

2. Comandos de instalación
   N/A

   3. Instrucciones para ejecutar los test
      3.1. Abrir el IDE IntellijIdea
      3.2. Ingresar en la opción File -> Open y abrir el proyecto
      3.3. Esperar unos minutos para que se descargen las despendencias (gradle)
      3.4. Ubicarse y ejecutar la clase \demoblaze-karate\src\test\java\user\Start.java.
      3.5. Se ejecutaran los features en paralelo (Para volver a ejecutar el signup.feature y no falle, se debe modificar 
            el valor Vusername del caso 1 a un valor no existente)
      3.6. Una vez finalizada la ejecución se puede visualizar los resulatdos en el reporte propio de Karate.
         para visualizarlo ubicarse en la ruta /build/karate-reports/karate-summary.html
      3.7. También puede ejecutar la clase RunnerTests.java (src/test/java/user/RunnerTests.java); se ejecutara los feature
      3.8. Visualizar reporte Cucumber en la ruta build/cucumber-html-reports/overview-features.html


4. Información adicional
   N/A