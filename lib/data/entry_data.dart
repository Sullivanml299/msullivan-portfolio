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
      title: "Watchers",
      description: "Experimenting with shaders in Unity.",
      imgPath: "images/watchers_still.jpg",
      gifPath: "images/watchers.gif",
      youtubeLink: "https://www.youtube.com/embed/R0CdKjkKzio"),
  EntryData(
      title: "Obligatory Breakout Clone",
      description:
          "Just a basic Breakout clone with some simple particle effects.",
      imgPath: "images/breakout_still.jpg",
      gifPath: "images/breakout.gif",
      youtubeLink: "https://www.youtube.com/embed/jTD17VrgdiE"),
  EntryData(
      title: "FMOD - Train",
      description:
          "Playing with FMOD. All tracks used were self-made using Finale software.",
      imgPath: "images/train_still.jpg",
      gifPath: "images/train.gif",
      youtubeLink: "https://www.youtube.com/embed/61BsdPnK_pg"),
  EntryData(
      title: "Fun with Quaternions",
      description: "Playing with Quaternions.",
      imgPath: "images/rotations_still.jpg",
      gifPath: "images/rotations.gif",
      youtubeLink: "https://www.youtube.com/embed/P4_sIS0uxvI"),
];

//UNREAL

List<EntryData> UnrealEntryList = [
  EntryData(
      title: "Obligatory Breakout Clone",
      description:
          "Just a basic Breakout clone with some simple particle effects.",
      imgPath: "images/breakout_still.jpg",
      gifPath: "images/breakout.gif",
      youtubeLink: "https://www.youtube.com/embed/jTD17VrgdiE"),
  EntryData(
      title: "Fun with Quaternions",
      description: "Playing with Quaternions.",
      imgPath: "images/rotations_still.jpg",
      gifPath: "images/rotations.gif",
      youtubeLink: "https://www.youtube.com/embed/P4_sIS0uxvI"),
];

//WebGL
List<EntryData> WebglEntryList = [
  EntryData(
      title: "WebGL - Bunny",
      description:
          "Phong shading. Two light sources. Fresnel shader with ambient noise."
          "Perspective (beginning) and Orthographic (end) cameras.",
      imgPath: "images/webgl_bunny_still.jpg",
      gifPath: "images/webgl_bunny.gif",
      youtubeLink: "https://www.youtube.com/embed/DdfanrAyK6c"),
];

//Ludum Dare

List<EntryData> LudumDareEntryList = [
  EntryData(
      title: "Fun with Quaternions",
      description: "Playing with Quaternions.",
      imgPath: "images/rotations_still.jpg",
      gifPath: "images/rotations.gif",
      youtubeLink: "https://www.youtube.com/embed/P4_sIS0uxvI"),
];
