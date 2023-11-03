class Respon {
  double hitunghalo(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 80.0;
    } else if (lebarLayar < 500) {
      return 40.0;
    } else {
      const fontMax = 80.0;
      const fontMin = 40.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double welcome(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 30.0;
    } else if (lebarLayar < 500) {
      return 20.0;
    } else {
      const fontMax = 30.0;
      const fontMin = 20.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double about(double lebarLayar) {
    if (lebarLayar > 1000) {
      return 64.0;
    } else if (lebarLayar < 1000) {
      return 40;
    } else {
      const fontMax = 64.0;
      const fontMin = 40.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1000 - 800;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double about2(double lebarLayar) {
    if (lebarLayar >= 900) {
      return 24.0;
    } else {
      return 12;
    }
    // final widhtDinamic = lebarLayar - 100;
    // const widthFixed = 1000 - 1000;

    // final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
  }

  double expe(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 60.0;
    } else if (lebarLayar < 500) {
      return 40;
    } else {
      const fontMax = 60.0;
      const fontMin = 14.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }

  double tentang(double lebarLayar) {
    if (lebarLayar > 1200) {
      return 20.0;
    } else if (lebarLayar < 500) {
      return 5;
    } else {
      const fontMax = 20.0;
      const fontMin = 5.0;
      final widhtDinamic = lebarLayar - 500;
      const widthFixed = 1200 - 500;

      final size = fontMin + ((fontMax - fontMin) + (widhtDinamic / widthFixed));
      return size;
    }
  }
}
