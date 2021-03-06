@api
Feature: Content model
  In order to enter structured content into my site
  As a content editor
  I want to have content entity types that reflect my content model.

  @spec @content_type
  Scenario: Bundles
    Then exactly the following content entity type bundles should exist
      | Name | Machine name | Type | Description |
      | Basic block | basic | Custom block type | A basic block contains a title and a body. |
      | Basic page | page | Content type | Use <em>basic pages</em> for your static content, such as an 'About us' page. |
      | Document | document | Media type | A locally hosted document, such as a PDF. |
      | Image | image | Media type | Locally hosted images. |
      | Instagram | instagram | Media type | Instagram posts. |
      | Landing page | landing_page | Content type | A special page with its own one-off layout and content. |
      | Tweet | tweet | Media type | Represents a tweet. |
      | Video | video | Media type | A video hosted by YouTube, Vimeo, or some other provider. |
      | Audio file | audio_file | Media type | A locally hosted audio file, such as an MP3. |
      | Slideshow | media_slideshow | Custom block type | A slideshow or carousel of media items. |
      | Video file | video_file | Media type | A locally hosted video file    |
      | Alert Paragraph | alert | Paragraph type | Create 8 different styles of alert boxes for VA.gov |
      | Accordion Item | collapsible_panel_item | Paragraph type | An individual accordion.  |
      | Accordion | collapsible_panel | Paragraph type | A group of accordions. |
      | Expandable Text | expandable_text | Paragraph type | Text that expands upon click. |
      | Link teaser | link_teaser | Paragraph type | A link followed by a description. For building inline "menus" of content. |
      | List of link teasers | list_of_link_teasers  | Paragraph type | A paragraph that contains only one type of paragraph: Link teaser.   |
      | Starred Horizontal Rule | starred_horizontal_rule | Paragraph type |  |
      | Process | process | Paragraph type | An ordered list (1, 2, 3, 4, N) of steps in a process. |
      | WYSIWYG | wysiwyg | Paragraph type | An open-ended text field. |
      | Support Service | support_service | Content type | Help desks, hotlines, etc, to be contextually placed alongside relevant content. |
      | Q&A | q_a | Paragraph type | Question and Answer |
      | Q&A Section | q_a_section | Paragraph type | A set of questions and answers with optional header. |
      | Alert | alert | Custom block type | An alert box that can be added to individual pages. |
      | Address | address | Paragraph type | An address block  |
      | React Widget | react_widget | Paragraph type | Add a React component to this page. |

  @spec @fields
  Scenario: Fields
    Then exactly the following fields should exist
      | Type | Bundle | Field label | Machine name | Field type | Required | Cardinality | Form widget | Translatable | Help text |
      | Custom block type | Basic block | Body | body | Text (formatted, long, with summary) |  | 1 | Text area with a summary | Translatable |  |
      | Custom block type | Slideshow | Media items | field_slideshow_items | Entity reference | Required | Unlimited | Entity browser |  |  |
      | Content type | Basic page | Meta tags | field_meta_tags | Meta tags |  | 1 | Advanced meta tags form |  |  |
      | Media type | Document | Document | field_document | File |  | 1 | File |  |  |
      | Media type | Image | Image | image | Image | Required | 1 | ImageWidget crop |  |  |
      | Media type | Instagram | Instagram post | embed_code | Text (plain, long) | Required | 1 | Text area (multiple rows) |  | Paste media post URL or embed code. |
      | Content type | Landing page | Description | body | Text (formatted, long, with summary) |  | 1 | Text area with a summary | Translatable | A description of this page, for use in teasers and lists of content. |
      | Content type | Landing page | Meta tags | field_meta_tags | Meta tags |  | 1 | Advanced meta tags form | Translatable |  |
      | Media type | Tweet | Tweet | embed_code | Text (plain, long) | Required | 1 | Text area (multiple rows) |  | Paste tweet's URL or embed code. |
      | Media type | Video | Video URL | field_media_video_embed_field | Video Embed | Required | 1 | Video Textfield | Translatable |  |
      | Media type | Audio file | Audio file | field_media_audio_file | File | Required | 1 | File | Translatable |  |
      | Media type | Audio file | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox | Translatable |  |
      | Media type | Document | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox | Translatable |  |
      | Media type | Image | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox |  |  |
      | Media type | Instagram | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox |  |  |
      | Media type | Tweet | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox |  |  |
      | Media type | Video | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox | Translatable |  |
      | Media type | Video file | Show in media library | field_media_in_library | Boolean |  | 1 | Single on/off checkbox | Translatable |  |
      | Media type | Video file | Video file | field_media_video_file | File | Required | 1 | File | Translatable |  |
      | Content type | Basic page | Intro text  | field_intro_text | Text (plain, long) |  | 1 | Text area (multiple rows) |  | This text appears directly beneath the page title, but may also appear as a summary of the content in other places, such as search results and social media posts. |
      | Content type | Basic page | Main Content | field_content_block | Entity reference revisions |  | Unlimited | Paragraphs EXPERIMENTAL |  |  |
      | Content type | Basic page | Related Links | field_related_links | Entity reference revisions |  | 1 | Paragraphs EXPERIMENTAL |  |  |
      | Content type | Basic page | Last Update | field_last_update | Date |  | 1 | Date and time |  |  |
      | Content type | Collapsible Panel Item  | Text | field_wysiwyg | Text (formatted, long) |  | 1 | Text area (multiple rows) | Translatable |  |
      | Paragraph type | Alert Paragraph | Alert Heading | field_alert_heading | Text (plain) | Required | 1 | Textfield |  |  |
      | Paragraph type | Alert Paragraph | Alert Type | field_alert_type | List (text) | Required | 1 | Select list |  |  |
      | Paragraph type | Alert Paragraph | Alert Message | field_alert_message | Text (formatted, long) | Required | 1 | Text area (multiple rows) |  |  |
      | Paragraph type | Alert Paragraph | Trigger Text | field_alert_trigger_text | Text (plain) |  | 1 | Textfield |  | The text that users will click to expand alert box and display message. |
      | Content type | Collapsible Panel Item  | Title | field_title | Text (plain) | Required | 1 | Textfield | Translatable |  |
      | Content type | Collapsible panel | Allow more than one item to expand at a time | field_collapsible_panel_multi | Boolean |  | 1 | Single on/off checkbox |  |  |
      | Content type | Collapsible panel | Collapsible Panel Items | field_va_paragraphs | Entity reference revisions | Required | Unlimited | Paragraphs Classic | Translatable |  |
      | Content type | Collapsible panel | Add border around items | field_collapsible_panel_bordered | Boolean |  | 1 | Single on/off checkbox |  |  |
      | Content type | Collapsible panel | Start expanded | field_collapsible_panel_expand | Boolean |  | 1 | Single on/off checkbox |  |  |
      | Paragraph type | Expandable Text | Full Text | field_wysiwyg | Text (formatted, long) | Required | 1 | Text area (multiple rows) | Translatable |  |
      | Paragraph type | Expandable Text | Text Expander | field_text_expander | Text (plain) | Required | 1 | Textfield |  |  |
      | Paragraph type | Link teaser | Link | field_link | Link |  | 1 | Link |  |  |
      | Paragraph type | Link teaser | Link summary | field_link_summary | Text (plain) |  | 1 | Textfield |  |  |
      | Paragraph type | List of link teasers | Link teasers | field_va_paragraphs | Entity reference revisions |  | Unlimited | Paragraphs Classic | Translatable |  |
      | Paragraph type | List of link teasers | Title | field_title | Text (plain) |  | 1 | Textfield | Translatable |  |
      | Paragraph type | Process | Steps | field_steps | Text (formatted, long) | Required | Unlimited | Text area (multiple rows) | Translatable |  |
      | Paragraph type | WYSIWYG | Text | field_wysiwyg | Text (formatted, long) |  | 1 | Text area (multiple rows) | Translatable |  |
      | Content type | Support Service | Phone Number | field_phone_number | Telephone number |  | 1 | Telephone number |  |  |
      | Content type | Support Service | Link | field_link | Link |  | 1 | Link |  |  |
      | Paragraph type | Q&A | Question | field_question | Text (plain) | Required | 1 | Textfield |  |  |
      | Paragraph type | Q&A | Answer | field_answer | Entity reference revisions | Required | Unlimited | Paragraphs Classic |  |  |
      | Paragraph type | Q&A Section | Section Header | field_section_header | Text (plain) |  | 1 | Textfield |  | An optional title that groups multiple questions together. |
      | Paragraph type | Q&A Section | Questions | field_questions | Entity reference revisions | Required | Unlimited | Paragraphs Classic |  |  |
      | Custom block type | Alert | Alert Type | field_alert_type | List (text) | Required | 1 | Select list |  |  |
      | Custom block type | Alert | Alert Title | field_alert_title | Text (plain) | Required | 1 | Textfield |  |  |
      | Custom block type | Alert | Alert Content | field_alert_content | Entity reference revisions | Required | 1 | Paragraphs Classic |  |  |
