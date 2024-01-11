# PainCare WebApp

PainCare is a Java EE web application designed to assist users in managing their profiles, creating blogs, leaving comments, and monitoring their pain diagnosis evolution. The project is organized into packages, each containing servlets, Java beans, and DAO implementations.

## Getting Started

To use the project, follow the steps below:

1. **Create the Database:**
    - Create the Database 
    - Navigate to the `src/main/java/database/` directory. Copy the `schema.sql` file in your terminal to create the necessary database structure.

2. **Modify `dao.properties`:**
    - After creating the database, modify the `dao.properties` file to ensure the correct database connection.
    - Modify the path of 'webcontent' Directory

3. **Adjust `webcontent` Directory:**
    - Update the build path to include the `webcontent` directory.
    - In the deployment assembly, select Add Folder and choose the `webcontent` directory. This directory contains essential files like `web.xml`, JSP views, and JavaScript files.

## Usage

Once the setup is complete, explore the various features offered by the PainCare application through the user interface. You can manage your profile, write blogs, comment on posts, and perform self-diagnosis with pain evolution tracking.

## Contributors

- Abderahmane el kaimouni
- Safouat EL Yassini
- Mohamed Amyn el boujadaini

Feel free to contribute to the PainCare project and enhance its functionalities. Happy coding!

