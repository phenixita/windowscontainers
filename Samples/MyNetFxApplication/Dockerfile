FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019 AS build
ARG netFxAppFolder=MyNetFxApplication
ARG netFxWebAppFolder=MyNetFxWebApp
WORKDIR /app

COPY . .
RUN nuget restore MyNetFxApplication.sln
RUN msbuild MyNetFxApplication.sln /p:Configuration=Release

# Console app, runtime.
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS runtime
WORKDIR /console/$netFxAppFolder
COPY --from=build /app/$netFxAppFolder/. ./

# web app, runtime.
WORKDIR /inetpub/wwwroot
COPY --from=build /app/$netFxWebAppFolder/. ./