<section class="download-section" id="download" style="background-image: url('{{ theme_option('download_background_image') ? RvMedia::getImageUrl(theme_option('download_background_image')) : Theme::asset()->url('images/background/download.png') }}');">
    <div class="container">
        <div class="download-content">
            <h2>{{ theme_option('download_title', 'DOWNLOAD NOW!') }}</h2>
            <div class="app-buttons">
                <a href="{{ theme_option('download_appstore_link', 'https://apps.apple.com/vn/app/xintel/id6733243038?l=vi') }}" target="_blank" aria-label="Download on the App Store">
                    <img src="{{ theme_option('download_appstore_image') ? RvMedia::getImageUrl(theme_option('download_appstore_image')) : Theme::asset()->url('images/icons/appstore.png') }}" alt="App Store">
                </a>
                <a href="{{ theme_option('download_playstore_link', 'https://images-storage-bucket.s3.ap-southeast-1.amazonaws.com/xin/download/xintel-v1.0.10.apk') }}" target="_blank"  aria-label="Get it on Google Play">
                    <img src="{{ theme_option('download_playstore_image') ? RvMedia::getImageUrl(theme_option('download_playstore_image')) : Theme::asset()->url('images/icons/apk.svg') }}" alt="Google Play">
                </a>
            </div>
        </div>
    </div>
</section>
