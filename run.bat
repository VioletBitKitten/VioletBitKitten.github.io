@ECHO OFF
REM Build and serve the Blog using Jekyll.

REM Delete the site files to rebuild from scratch.
IF EXIST "_site" (
    ECHO Deleting the site files.
    DEL /Q _site
)

REM Build the site and start the server.
ECHO Building the site and serving in Development mode.
SET JEKYLL_ENV=development
bundle exec jekyll serve --watch