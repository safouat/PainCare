PainCare WebApp

PainCare is a Java EE web application designed to assist users in managing their profiles, creating blogs, leaving comments, and monitoring their pain diagnosis evolution. The project is organized into packages, each containing servlets, Java beans, and DAO implementations.
Getting Started

To use the project, follow the steps below:

1-Create the Database:
        Navigate to the src/main/java/database/ directory.
        Execute the schema.sql file in your terminal to create the necessary database structure.



    $ cd src/main/java/database/
    $ cat schema.sql | mysql -u your_username -p

2-Modify dao.properties:
        After creating the database, modify the dao.properties file to ensure the correct database connection.

3-Adjust WebContent Directory:
        Update the build path to include the WebContent directory.
        In the deployment assembly, select Add Folder and choose the WebContent directory. This directory contains essential files like web.xml, JSP views, and JavaScript files.

4-Explore Package Structure:
        The project is structured into packages, each serving a specific purpose.
            profile Package:
                ProfileServlet.java: Manages user profile functionalities.
                ProfileBean.java: Java bean for user profile data.
                ProfileDAO.java: Data Access Object for profile operations.
            blog Package:
                BlogServlet.java: Handles blog-related functionalities.
                BlogBean.java: Java bean for blog-related data.
                BlogDAO.java: Data Access Object for blog operations.
            comment Package:
                CommentServlet.java: Manages comment-related functionalities.
                CommentBean.java: Java bean for comment-related data.
                CommentDAO.java: Data Access Object for comment operations.
            diagnosis Package:
                DiagnosisServlet.java: Facilitates pain diagnosis and tracking.
                DiagnosisBean.java: Java bean for diagnosis-related data.
                DiagnosisDAO.java: Data Access Object for diagnosis operations.

Usage

Once the setup is complete, explore the various features offered by the PainCare application through the user interface. You can manage your profile, write blogs, comment on posts, and perform self-diagnosis with pain evolution tracking.
Project Structure




Usage

Once the setup is complete, explore the various features offered by Aincare through the user interface. You can manage your profile, write blogs, comment on posts, and perform self-diagnosis with health evolution tracking.
Project Structure

   plaintext



src
│
├── main
│   └── java
│       └── user
│           ├── UserServlet.java
│           ├── UserBean.java
│           ├── UserDAO.java
│       └── blog
│           ├── BlogServlet.java
│           ├── BlogBean.java
│           ├── BlogDAO.java
│       └── comment
│           ├── CommentServlet.java
│           ├── CommentBean.java
│           ├── CommentDAO.java
│       └── ...
│   └── webapp
│       └── WebContent
│           ├── index.jsp
│           ├── blog.jsp
│           ├── ...
│           └── WEB-INF
│               └── web.xml
├── ...
├── ...

Contributors

    Abderahmane el kaimouni
    Safouat EL Yassini
    Mohamed Amyn el boujadaini




Feel free to contribute to the PainCare project and enhance its functionalities. Happy coding!
