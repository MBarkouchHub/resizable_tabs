<a name="readme-top"></a>

  

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-blue.svg?style=for-the-badge&logo=linkedin
[linkedin-url]: https://linkedin.com/in/othneildrew

[github-shield]: https://img.shields.io/badge/-Github-black.svg?style=for-the-badge&logo=github
[github-url]: https://github.com/MBarkouchHub

[repo-shield]: https://img.shields.io/badge/-Repo-grey.svg?style=for-the-badge&logo=github
[repo-url]: https://github.com/MBarkouchHub

[License-shield]: https://img.shields.io/badge/-License-yellow.svg?style=for-the-badge&logo=license
[License-url]: github.com/MBarkouchHub/resizable_tabs/blob/m.barkouch.branch/LICENSE

[![LinkedIn][linkedin-shield]][linkedin-url]   [![Github][github-shield]][github-url]   [![repo][repo-shield]][repo-url]   [![License][License-shield]][License-url]





<!-- PROJECT LOGO -->
<br />
<div align="center">
  <video src="https://github.com/user-attachments/assets/f7a573a0-c8bb-4928-ad13-bddb4a70c771" width="auto" loop muted label:"Resized tabs Exemple"></video>

  <h3 align="center">Resizable Tabs 🔀</h3>

  <p align="center">
    A lightweight and elegant Flutter widget to create resizable tab layouts with a draggable divider.
    <br />
    <a href="https://pub.dev/packages/resizable_tabs"><strong>Explore on pub.dev »</strong></a>
    <br />
    <br />
    <a href="https://github.com/MBarkouchHub/resizable_tabs">View Demo</a>
    ·
    <a href="https://github.com/MBarkouchHub/resizable_tabs/issues">Report Bug</a>
    ·
    <a href="https://github.com/MBarkouchHub/resizable_tabs/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#features">Features</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

`resizable_tabs` is a Flutter package that provides a **split-view layout** with two tabs (or panels) separated by a **draggable divider**.  
Perfect for IDE-like layouts, dashboards, editors, and responsive designs.

### Why use it?
* 🧩 Create resizable panels effortlessly  
* ⚡ Lightweight, dependency-free, and responsive  
* 🎨 Fully customizable divider style and behavior  
* 🪟 Works in both horizontal and vertical layouts  

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[flutter.dart]: https://img.shields.io/badge/Flutter-blue?style=for-the-badge&logo=flutter&logoColor=white
[flutter-url]: https://vuejs.org/

[dart]: https://img.shields.io/badge/dart-blue?style=for-the-badge&logo=dart&logoColor=white
[dart-url]: https://vuejs.org/

### Built With
* [![Flutter][flutter.dart]][flutter-url]
* [![Dart][dart]][flutter-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To use the `resizable_tabs` package in your Flutter project, follow these steps:

### Prerequisites

Make sure you have Flutter installed on your machine:
* Terminal
  ```bash
  flutter --version
  ```

### Installation

1. Add the package to your `pubspec.yaml`:
  ```yaml
  dependencies:
    resizable_tabs: ^1.0.0
  ```

2. Install packages:
   ```bash
   flutter pub get
   ```
   
4. Import it in your Dart file:
   ```dart
   import 'package:resizable_tabs/resizable_tabs.dart';
   ```

 <p align="right">(<a href="#readme-top">back to top</a>)</p>

 
### Usage

Here’s a simple example of creating a resizable tabs layout:
 ```dart
Scaffold(
      body: ResizableTabsScreen(
        tabOne: Container(
          color: Colors.blue,
          child: const Center(child: Text('Left Tab')),
        ),
        tabTwo: Container(
          color: Colors.green,
          child: const Center(child: Text('Right Tab')),
        ),
      ),
    ),
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [x] Add Changelog
- [x] Add back to top links
- [ ] Add Additional Templates w/ Examples
- [ ] Add "components" document to easily copy & paste sections of the readme
- [ ] Multi-language Support
    - [ ] Chinese
    - [ ] Spanish

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Mourad BARKOUCH - [@your_twitter](https://twitter.com/your_username) - mouradbarkouch@gmail.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)

<p align="right">(<a href="#readme-top">back to top</a>)</p>





