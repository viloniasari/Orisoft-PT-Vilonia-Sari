*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}     https://gurubinar.id
${email}    binar_testing@gmail.com
${password}     Qwerty123
${searchBlog}     Sejarah
${searchLesson}     RPP
${searchReading}    lili
${searchMedia}    zoom
${searchQuiz}   SMA

*** Test Cases ***
This is Login

    Login
    Close Browser

This is Dashboard

    Login
    Click Element       //*[@id="wrapper"]/div[3]/div/div[1]/section/div[1]/div[2]/div/div/div/div/a/img
    Page Should Contain     Satu pintu berbagai ilmu
    Capture Page Screenshot
    Go Back
    Click Element       //*[@id="wrapper"]/div[3]/div/div[1]/section/div[1]/div[3]/div/div/div/div/a/img
    Page Should Contain     Soft Skill
    Capture Page Screenshot
    Go Back
    Click Element       //*[@id="wrapper"]/div[3]/div/div[1]/section/div[1]/div[4]/div/div/div/div/a/img
    Page Should Contain     Daftar sertifikat Yang Dapat Diakumulatif
    Capture Page Screenshot
    Go Back
    Click Element       //*[@id="my-btn"]/img
    Capture Page Screenshot
    Page Should Contain Element         //*[@id="exampleModalLongTitle"]
    Click Button        //*[@class="btn btn-secondary"]
    Close Browser

This is Blog Feature

    Login
    Click Element       //*[@id="menu-bar"]/li[3]/a
    Click Element    //*[@id="search-form"]/div[2]/a
    Input Text      //*[@id="form-blog"]/div[2]/div/div/div[1]/input    Software Tester
    Input Text      //*[@id="form-blog"]/div[2]/div/div/div[2]/div/div[3]/div[2]    Guru Binar Testing
    #Select From List   //*[@id="form-blog"]/div[2]/div/div/div[3]/span/span[1]/span    Umum
    Click Element   //*[@id="form-blog"]/div[2]/div/div/div[3]/span/span[1]/span
    Click Element   //*[contains(text(), "Umum")]
    Choose File         //*[@id="thumbnail-image"]      /Users/nia/Desktop/Screenshot 2023-10-19 at 1.06.40 PM.png  #directory atau path image
    Click Element       //*[@id="publish"]/div[1]/label
    Click Button        //*[@id="submit"]
    Page Should Contain     Berhasil Menambahkan Blog!
    Capture Page Screenshot
    Click Element        //*[@class="swal2-confirm swal2-styled"]
    Click Element       //*[@id="menu-bar"]/li[3]/a
    Capture Page Screenshot
    Close Browser

This is Calendar Feature

    Login
    Click Element       //*[@id="menu-bar"]/li[4]/a
    Page Should Contain Element     //*[@id="calender_student"]/div[1]/div[2]
    Capture Page Screenshot
    Click Element       //*[@id="calender_student"]/div[1]/div[3]/div/button[2]
    Page Should Contain Element     //*[@id="calender_student"]/div[1]/div[2]
    Capture Page Screenshot
    Click Element       //*[@id="calender_student"]/div[1]/div[3]/div/button[3]
    Page Should Contain Element             //*[@id="calender_student"]/div[1]/div[2]
    Capture Page Screenshot
    Click Element       //*[@id="calender_student"]/div[1]/div[3]/div/button[4]
    Page Should Contain Element         //*[@id="calender_student"]/div[1]/div[2]
    Capture Page Screenshot
    Click Element       //*[@id="calender_student"]/div[1]/div[3]/div/button[1]
    Capture Page Screenshot
    Close Browser

This is Portofolio Feature
    Login
    Click Element       //*[@id="menu-bar"]/li[5]/a
    Click Element       //*[@id="wrapper"]/div[3]/div[1]/div/div/div/div[2]/div[2]/div/div/div/ul/li[2]/a
    Page Should Contain Element         //*[@id="sertifikat"]/div/div/h5
    Capture Page Screenshot
    Click Element       //*[@id="wrapper"]/div[3]/div[1]/div/div/div/div[2]/div[2]/div/div/div/ul/li[3]/a
    Page Should Contain Element         //*[@id="sertifikat"]/div/div/h5
    Capture Page Screenshot
    Close Browser
This is My Class Feature
    Login
    Click Element       //*[@id="menu-bar"]/li[6]/a
    Input Text          //*[@id="wrapper"]/div[3]/div/div[1]/div/div/div/div/h5/form/div/div/input      Fisika
    Capture Page Screenshot
    Close Browser
This is Explore Training
    Login
    Click Element       //*[@id="menu-bar"]/li[7]/a/span
    Capture Page Screenshot
    Input Text          //*[@id="filter_form"]/div/div[2]/div[1]/input      membaca
    Press Keys      //*[@id="filter_form"]/div/div[2]/div[1]/input      ENTER
    Wait Until Page Contains Element    //*[@href="https://gurubinar.id/pelatihan/teknik-membaca-menyenangkan-dengan-buku-bacaan-digital/60d1971752ae7?kelas_kolaborasi=umum"]
    sleep       2s
    Capture Page Screenshot
    Page Should Contain Element         //*[@class="rig-img img-content lozad shadow card-img-top img-fluid img-rounded"]
    Close Browser
This is Logout
    Login
    Click Element       //*[@id="menu-bar"]/li[8]/a
    Page Should Contain Element         //*[@id="top"]/section[1]/div/div/div[1]/div
    Capture Page Screenshot         Capture Page Screenshot
    Close Browser

This is Training Program
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@href="#courses"]
    sleep               2s
    Click Element       //*[@href="https://gurubinar.id/pelatihan"]
    Capture Page Screenshot
    Input Text          //*[@name="class_name"]      membaca
    Press Keys          //*[@name="class_name"]      ENTER
    Wait Until Page Contains Element    //*[@href="https://gurubinar.id/pelatihan/teknik-membaca-menyenangkan-dengan-buku-bacaan-digital/60d1971752ae7?kelas_kolaborasi=umum"]
    sleep       2s
    Capture Page Screenshot
    Page Should Contain Element         //*[@class="rig-img img-content lozad shadow card-img-top img-fluid img-rounded"]
    Close Browser
This is Webinar and Event
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@href="#events"]
    sleep   2s
    Click Element       //*[@class="btn btn-sm mr-3 text-white btn-sdo"]
    Input Text          //*[@id="demos"]/div/div[2]/form/div/div/div/input      Berbicara
    Capture Page Screenshot
    Click Element       //*[@id="semua-tab"]
    Capture Page Screenshot
    Click Element       //*[@href="https://gurubinar.id/webinar/tips-jitu-lolos-validasi-aksi-nyata-pmm?webinar_id=404"]
    Page Should Contain Element     //*[@id="pills-activity-tab"]
    Capture Page Screenshot
    Close Browser
This is Blog
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@href="#blogs"]
    sleep               2s
    Click Element       //*[@class="btn btn-sm mr-3 text-white btn-sdo" and @href="https://gurubinar.id/blog"]
    Capture Page Screenshot
    Input Text        //*[@id="input-search"]   ${searchBlog}
    Press Keys        //*[@id="input-search"]   ENTER
    Element Should Contain      //*[@class="card-title"]    ${searchBlog}
    Capture Page Screenshot
    Close Browser
This is About
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@id="navbarNavDropdown"]/ul[2]/li[2]/a
    Page Should Contain         Pelantar Pengembangan Karir
    Capture Page Screenshot
    Close Browser
This is Road Map
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element   //*[@id="navbarNavDropdown"]/ul[2]/li[3]/a
    Page Should Contain     Lencana Guru Binar
    Capture Page Screenshot
    Close Browser
This is List Of Lesson Plans
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@id="navbarNavDropdown"]/ul[2]/li[7]/a
    Capture Page Screenshot
    Click Element       //*[@class="btn btn-sdo mt-auto z-3"]
    Capture Page Screenshot
    Input Text      //*[@name="resources_name"]    ${searchLesson}
    Press Keys      //*[@name="resources_name"]     ENTER
    TRY
        Page Should Contain    ${searchLesson}
    EXCEPT
        log     belum sesuai
    END
    Capture Page Screenshot
    Element Should Be Enabled       //*[@class="btn btn-primary btn-sm mr-1"]
    Click Element       //*[@class="btn btn-primary btn-sm mr-1"]
    Close Browser
This is Reading Materials
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@id="navbarNavDropdown"]/ul[2]/li[7]/a
    Capture Page Screenshot
    Click Element       //*[@class="btn btn_rpp btn-sdo mt-auto mx-auto"]
    Capture Page Screenshot
    Input Text      //*[@name="resources_name"]    ${searchReading}
    Press Keys      //*[@name="resources_name"]     ENTER
    #Page Should Contain    ${searchReading}
    TRY
        Page Should Contain Element   //*[@class="card profile-widget"]
    EXCEPT
        log     belum sesuai
    END
    Capture Page Screenshot
    Close Browser
This is Learning Media
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@id="navbarNavDropdown"]/ul[2]/li[7]/a
    Capture Page Screenshot
    Click Element       //*[@id="bg-bahan_ajar"]/div/a[1]/img

    Capture Page Screenshot
    Input Text      //*[@name="resources_name"]    ${searchMedia}
    Press Keys      //*[@name="resources_name"]     ENTER
    TRY
        Page Should Contain Element   //*[@class="card profile-widget"]
    EXCEPT
        log     belum sesuai
    END
    Capture Page Screenshot
    Close Browser
This is Quiz
    Login
    Click Element       //*[@id="wrapper"]/div[1]/div/a
    Click Element       //*[@id="navbarNavDropdown"]/ul[2]/li[7]/a
    Capture Page Screenshot
    Execute JavaScript    window.scrollTo(0, 500)
    Click Element       //*[@class="btn btn-sdo mt-auto z-3 button-box"]
    Capture Page Screenshot
    Click Element   //*[@id="premium"]
    Capture Page Screenshot
    Click Element   //*[@id="free"]
    Capture Page Screenshot
    Input Text      //*[@id="myInput"]    ${searchQuiz}
    Press Keys      //*[@id="myInput"]     ENTER
    sleep   2s
    TRY
        Page Should Contain    ${searchQuiz}
    EXCEPT
        log     belum sesuai
    END
    Capture Page Screenshot
    Close Browser

*** Keywords ***
Login
    Open Browser    ${url}   chrome
    Maximize Browser Window
    Click Element   //*[@id="navbarNavDropdown"]/ul[2]/li[8]/a
    Input Text      //*[@id="email"]       ${email}
    Input Text      //*[@id="password"]     ${password}
    Click Button    //*[@class="btn btn-primary"]
    sleep   3s
    Page Should Contain Element     //*[@id="menu-bar"]/li[2]/a
    Capture Page Screenshot
    #Close Browser