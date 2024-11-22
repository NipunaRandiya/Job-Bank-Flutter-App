# Job Bank Application

A Job Bank Application that allows users to find jobs, browse job listings and apply for them. The app also supports multiple languages, enabling users to switch the interface language according to their preferences.

## Features

- Find Jobs: Allows users to search and browse job listings.
- Multi-language Support: Switch between different languages (e.g., English, Hindi, etc.) to make the app more accessible to a broader audience.
- Job Filtering: Filter job listings based on criteria like job type, payment mode.
- Responsive UI: A clean and intuitive interface that works well on both Android and iOS devices.
- Easy to Use: Simple navigation and easy-to-understand layout.

### Installation

To run the project locally, follow the steps below:

#### Prerequisites

- Ensure you have Flutter installed on your machine.
- Install any dependencies (e.g. Android Studio) for building and running Flutter apps on your system.

#### Steps

1.  Clone the repository to your local machine
2.  Navigate into the project directory
3.  Install the dependencies
    ```bash
    flutter pub get
    ```
4.  Run the app:
    - On Android:
      ```bash
      flutter run
      ```
    - On iOS (macOS required):
      ```bash
      flutter run
      ```

### Usage

- Once the app is running, you can explore job listings by searching for job titles, locations, or keywords.
- The language of the app can be changed dynamically by selecting the language from the settings or language selector.

### Folder Structure

- **lib/**: Contains the Flutter source code for the app.
  - **screens/**: Contains all the interface.
  - **samples/**: Text dataset.
  - **models/**: Contains data models (e.g. Job model).
  - **setting/**: Contains language files for localization
  - **widgets/**: Custom widget for the application needs.
