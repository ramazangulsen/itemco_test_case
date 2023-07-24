# NYTimes Most Popular Articles App

Media Probe is a revolutionizing online media. They aim to be the one stop shop for all relevant media
articles, which can be personalised to users. They aim to reach all corners of the globe and be easily
accessible. They have requested for a mobile application.

## Getting Started

NYTimes Articles App was developed using Flutter. MVVM architecture was used in the project. There are 3 screens in the project.

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/ramazangulsen/ny_times_article_app.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter gen-l10n
```

## Boilerplate Features:

- Splash View
- Article View
- ArtileDetail View
- Routing
- Theme
- Http
- Provider (State Management)
- Modular Structure(part)
- Lifecycle Detection
- ValueStreamService initilization
- Base64 Assets
- Disposable and Non Disposable Providers
- Unit Test
- Hidden Api Key(.env)
- Page Structure(It is required to change the relevant page via config in app in app situations)

### Up-Coming Features:

- Fastlane Setup
- SonarQube
- Localizations

### Libraries & Tools Used

- [http](https://github.com/dart-lang/http/tree/master/pkgs/http)
- [flutter_dotenv](https://github.com/java-james/flutter_dotenv) (to hide api_key)
- [Provider](https://github.com/rrousselGit/provider) (State Management)
- [ny_times_articles_part](part)

### Folder Structure

Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- core/
  |- base_providers/
  |- enums/
  |- helpers/
  |- models/
  |- repositories/
  |- services/
  |- viewmodels/
|- l10n/
|- presentation/
  |- pages/
  |- view/
  |- widgets/
|- utils/
|- main.dart
part/
  |- lib/
    |- config
    |- theme
.env/
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- core - It is the part of the business logic operations in the project.
2- l10n - It is the part where arb files are created for the multilanguage operation of the application.
3- presentation is the part where operations related to the user interface are performed.
4- util — Contains the utilities/common functions of your application.
5- part - It was created to keep the fixed values in the project in a modular structure.
```

## Conclusion

I will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with the boilerplate then please feel free to submit an issue and/or pull request 🙂

If you liked my work, don’t forget to ⭐ star the repo to show your support.
