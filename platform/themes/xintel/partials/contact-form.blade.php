<style>
    .btn-submit-gradient {
        background: linear-gradient(90deg, rgb(13, 54, 202), rgb(54, 170, 252));
        transform: scale(1.05);
        border: none;
        width: 220px;
    }
    .btn-submit-gradient:hover {
        background: linear-gradient(90deg, rgb(4 1 114), rgb(14 139 229));
        transition: transform 0.3s ease, background 0.3s ease;
    }

    .cs_shape_wrap input,
    .cs_shape_wrap textarea {
        border-radius: 20px;
    }
</style>
<section class="cs_shape_wrap cs_faq_shapes_1 position-relative" id="{{ theme_option('opt-contact_section_id') }}">
    <div class="cs_shape cs_shape_position_1"></div>
    <div class="cs_height_120 cs_height_lg_80"></div>
    <div class="container">
        <div class="cs_height_50 cs_height_lg_50"></div>
        <div class="container wow fadeIn" data-wow-duration="1s" data-wow-delay="0.35s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.35s; animation-name: fadeIn;">
            <div class="row cs_gap_y_24">

                <div class="container-fluid p-0">
                    <div class="contact-container animated fadeIn">
                        <div class="row g-0">
                            <div class="area_maps col-md-6 pe-lg-5 order-2 order-md-1">
                                <div class="map-placeholder" >
                                    {!! do_shortcode('[google-map height="700"]' . theme_option('opt-contact_section_address') . '[/google-map]') !!}
                                </div>
                            </div>

                            <div class="area_contact_form col-md-6 d-flex align-items-center order-1 order-md-2">
                                <div class="contact-form-section w-100">
                                    <h2 class="animated fadeInUp" style="animation-delay: 0.2s;">{{ theme_option('opt-contact_section_handing') }}</h2>
                                    <form action="{{ route('public.send.contact') }}" method="post" class="contact-form">
                                        @csrf
                                        <div class="mb-3 animated fadeInUp" style="animation-delay: 0.4s;">
                                            <label for="fullName" class="form-label">Full name</label>
                                            <input type="text" name="name" value="{{ old('name') }}" class="form-control" placeholder="{{ __('Full Name') }}" required>
                                        </div>
                                        <div class="mb-3 animated fadeInUp" style="animation-delay: 0.6s;">
                                            <label for="email" class="form-label">Email</label>
                                            <input type="email" name="email" value="{{ old('email') }}" class="form-control" placeholder="{{ __('Email') }}" required>
                                        </div>
                                        <div class="mb-3 animated fadeInUp" style="animation-delay: 0.8s;">
                                            <label for="phoneNumber" class="form-label">Phone Number</label>
                                            <input type="text" name="phone" value="{{ old('phone') }}" class="form-control" placeholder="{{ __('Phone Number') }}">
                                        </div>
                                        <div class="mb-4 animated fadeInUp" style="animation-delay: 1s;">
                                            <label for="message" class="form-label">Message</label>
                                            <textarea name="content" rows="5" class="form-control" placeholder="{{ __('Do you need support ?') }}" required>{{ old('content') }}</textarea>
                                        </div>
                                        <div class="text-center animated fadeInUp" style="animation-delay: 1.2s;">
                                            <button type="submit" class="btn btn-submit-gradient text-white fw-bold py-3 px-4 py-sm-3 px-sm-5 rounded-pill fs-5 shadow-lg animated zoomIn" style="animation-delay: 0.6s;">
                                                {{ __('Contact') }}
                                            </button>
                                        </div>
                                        <div class="contact-message contact-success-message" style="display: none"></div>
                                        <div class="contact-message contact-error-message" style="display: none"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="cs_height_100 cs_height_lg_30"></div>
    </div>
</section>

