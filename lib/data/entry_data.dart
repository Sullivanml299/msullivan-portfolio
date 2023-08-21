class EntryData {
  String title;
  String description;
  String imgPath;
  String gifPath;
  String youtubeLink;
  EntryData({
    required this.title,
    required this.description,
    required this.imgPath,
    required this.gifPath,
    required this.youtubeLink,
  });
}

enum DisplayType { unity, unreal, webgl, ludum, resume }

//UNITY

List<EntryData> UnityEntryList = [
  EntryData(
      title: "Rune Classifier",
      description: "Runtime image-classifier magic system prototype.\n\n"
          "ConvNet classifier trained using PyTorch and exported to ONNX format."
          " Network was trained using 100 base images for each rune,"
          " augmented to 1000 images per rune using random transformations."
          " Implemented in Unity using Barracuda.",
      imgPath: "assets/images/RuneClassifier_Still.jpg",
      gifPath: "assets/images/RuneClassifier.gif",
      youtubeLink: "https://www.youtube.com/embed/iKsDJ1lGlfY"),
  EntryData(
      title: "Journal",
      description: "In-game drawing and note-taking prototype.\n\n"
          "Journal cover and hands were modeled and animated in blender."
          " The pages themselves are procedurally modeled using bezier patches."
          " The color picker is shaded by mapping from the cube's model space to color space and applying a noise layer using fractional brownian motion."
          " Line drawing is essentially bresenham's algorithm with shape fill.",
      imgPath: "assets/images/journal_still.jpg",
      gifPath: "assets/images/journal.gif",
      youtubeLink: "https://www.youtube.com/embed/aVtvSZZeEXE"),
  EntryData(
      title: "Procedural Vine",
      description:
          "Procedurally modeled vine using Catmull-rom spline with line renderer points as control points.",
      imgPath: "assets/images/vines_still.jpg",
      gifPath: "assets/images/vines.gif",
      youtubeLink: "https://www.youtube.com/embed/o1fiW7CzJvE"),
  EntryData(
      title: "State Machine AI",
      description: "Simple state machine enemy AI for the bear and mushrooms."
          " The color cube is the target."
          " Enemy models are free assets from the Unity Asset Store.",
      imgPath: "assets/images/bear_still.jpg",
      gifPath: "assets/images/bear.gif",
      youtubeLink: "https://www.youtube.com/embed/xc6XH3HuEfY"),
  EntryData(
      title: "Watchers",
      description: "Experimenting with shaders in Unity.",
      imgPath: "assets/images/watchers_still.jpg",
      gifPath: "assets/images/watchers.gif",
      youtubeLink: "https://www.youtube.com/embed/R0CdKjkKzio"),
  EntryData(
      title: "Obligatory Breakout Clone",
      description:
          "Just a basic Breakout clone with some simple particle effects.",
      imgPath: "assets/images/breakout_still.jpg",
      gifPath: "assets/images/breakout.gif",
      youtubeLink: "https://www.youtube.com/embed/jTD17VrgdiE"),
  EntryData(
      title: "FMOD - Train",
      description:
          "Playing with FMOD. All audio tracks used were self-made using Finale software.",
      imgPath: "assets/images/train_still.jpg",
      gifPath: "assets/images/train.gif",
      youtubeLink: "https://www.youtube.com/embed/61BsdPnK_pg"),
  EntryData(
      title: "Fun with Quaternions",
      description: "Playing with Quaternions.",
      imgPath: "assets/images/rotations_still.jpg",
      gifPath: "assets/images/rotations.gif",
      youtubeLink: "https://www.youtube.com/embed/P4_sIS0uxvI"),
];

//UNREAL

List<EntryData> UnrealEntryList = [];

//WebGL
List<EntryData> WebglEntryList = [
  EntryData(
      title: "WebGL - Bunny",
      description:
          "Phong shading. Two light sources. Fresnel shader with ambient noise."
          "Perspective (beginning) and Orthographic (end) cameras.",
      imgPath: "assets/images/webgl_bunny_still.jpg",
      gifPath: "assets/images/webgl_bunny.gif",
      youtubeLink: "https://www.youtube.com/embed/DdfanrAyK6c"),
];

//Ludum Dare

List<EntryData> LudumDareEntryList = [];
