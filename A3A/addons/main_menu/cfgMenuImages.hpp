    /*
        the "path" value expects a string pointing to an .ogv video file.

        the "name" value is what gets used in the cba settings.

        the "song" value expects a string pointing to a CfgMusic entry, though can also be set to "NONE" to not play any music at all.
        > If no value is set, no song is forced and cba settings are used.

        the "delay" value expects an integer. This will be the delay (in seconds) before a video starts playing again after completion.
        > If no value is set, it will automatically loop when the video finishes.
    */

    class intro_bwa
    {
        path = QPATHTOFOLDER(data\backgrounds\images\bwa_co.jpg);
        name = "BWA";
    };
    class intro_canada
    {
        path = QPATHTOFOLDER(data\backgrounds\images\canada_co.jpg);
        name = "Canada";
    };
    class intro_cars
    {
        path = QPATHTOFOLDER(data\backgrounds\images\Cars_co.jpg);
        name = "Cars";
    };
    class intro_clone_wars
    {
        path = QPATHTOFOLDER(data\backgrounds\images\clone_wars_co.jpg);
        name = "Clone Wars";
    };
    class intro_ffaa
    {
        path = QPATHTOFOLDER(data\backgrounds\images\ffaa_co.jpg);
        name = "FFAA";
    };
    class intro_italy
    {
        path = QPATHTOFOLDER(data\backgrounds\images\italy_co.jpg);
        name = "Italy";
    };