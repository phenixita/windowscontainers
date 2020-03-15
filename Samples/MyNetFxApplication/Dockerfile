FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 AS build
WORKDIR /app

COPY . .
RUN nuget restore MyNetFxApplication.sln
RUN msbuild MyNetFxApplication.sln /p:Configuration=Release

# Console app, runtime.
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS runtime
WORKDIR /console/MyNetFxApplication
COPY --from=build /app/MyNetFxApplication/. ./

# web app, runtime.
WORKDIR /inetpub/wwwroot
COPY --from=build /app/MyNetFxWebApp/. ./