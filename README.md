# Python's project with Graphql

To install dependencies:

    pip install fastapi uvicorn sqlalchemy graphene graphene-sqlalchemy strawberry-graphql alembic psycopg2 black python-dotenv

To create requirement file:

    pip freeze > requirements.txt

To migrate the database first run this command that will create the file *alembic.ini*

    alembic init alembic

To migrate database:

    docker-compose run app alembic revision --autogenerate -m "New Migration" 

This command will create a file into:

    alembic/versions

Then create update the database:

    docker-compose run app alembic upgrade head

To post new elements:

    mutation CreateNewPost {
        createNewPost(title: "new title2", content: "new content") {
            ok
        }
    }

To query all elements:

    {
        allPosts {
            title
        }
    }

To query one element by Id:

    {
        postById(postId: 2) {
            id
            title
            content
        }
    }