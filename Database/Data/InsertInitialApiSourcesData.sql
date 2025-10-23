INSERT INTO HorrorApi.ApiSources (Name, Description, Url, DateCreated)
VALUES ('Cat Fact', 'Returns a fact about cats', 'https://catfact.ninja/fact', GETDATE())

INSERT INTO HorrorApi.ApiSources (Name, Description, Url, DateCreated)
VALUES ('Agify.io', 'Predicts a persons age based on their name', 'https://api.agify.io?name=Parker', GETDATE())

INSERT INTO HorrorApi.ApiSources (Name, Description, Url, DateCreated)
VALUES ('Data USA', 'Gets USA Population', 'https://datausa.io/api/data?drilldowns=Nation&measures=Population', GETDATE())