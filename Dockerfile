FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine
WORKDIR /template
COPY . .
RUN apk add git nano                                    && \
#apk del vi                                             && \
dotnet new console              -o console              && \
dotnet new classlib             -o classlib             && \
dotnet new worker               -o worker               && \
dotnet new mstest               -o mstest               && \
dotnet new nunit                -o nunit                && \
dotnet new nunit-test           -o nunit-test           && \
dotnet new xunit                -o xunit                && \
dotnet new razorcomponent       -o razorcomponent       && \
dotnet new page                 -o page                 && \
dotnet new viewimports          -o viewimports          && \
dotnet new viewstart            -o viewstart            && \
dotnet new blazorserver         -o blazorserver         && \
dotnet new blazorwasm           -o blazorwasm           && \
dotnet new web                  -o web                  && \
dotnet new mvc                  -o mvc                  && \
dotnet new webapp               -o webapp               && \
dotnet new angular              -o angular              && \
dotnet new react                -o react                && \
dotnet new reactredux           -o reactredux           && \
dotnet new razorclasslib        -o razorclasslib        && \
dotnet new webapi               -o webapi               && \
dotnet new grpc                 -o grpc                 && \
dotnet new gitignore            -o gitignore            && \
dotnet new globaljson           -o globaljson           && \
dotnet new nugetconfig          -o nugetconfig          && \
dotnet new tool-manifest        -o tool-manifest        && \
dotnet new webconfig            -o webconfig            && \
dotnet new sln                  -o sln                  && \
dotnet new proto                -o proto                && \
cd Dummy && \
dotnet restore
WORKDIR /home/projects