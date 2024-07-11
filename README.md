# Template Component Plugin: KSCOPE24 Projects

This repository contains the Oracle APEX template component plugin "KSCOPE24 Projects." This plugin is designed to enhance the project management capabilities within the Oracle APEX environment, particularly tailored for the KSCOPE 2024 event.

## Overview

The KSCOPE24 Projects template component plugin allows you to integrate project management features into your Oracle APEX applications. It supports partial reports and includes CSS for styling.

## Installation

To install the plugin, follow these steps:

1. **Download the SQL file:**
   - Ensure you have downloaded the `template_component_plugin_kscope24_projects.sql` file from this repository.

2. **Connect to your Oracle Database:**
   - Use a SQL client to connect to your Oracle Database as the owner (parsing schema) of the application or as a database user with the `APEX_ADMINISTRATOR_ROLE` role.

3. **Run the SQL script:**
   - Execute the `template_component_plugin_kscope24_projects.sql` file in your SQL client. This will install the plugin into your Oracle APEX environment.

## Usage

After installing the plugin, you can add it to your Oracle APEX application by following these steps:

1. **Navigate to Shared Components:**
   - In your Oracle APEX application, go to the "Shared Components" section.

2. **Add the Plugin:**
   - Under the "Plugins" section, you will find the "KSCOPE24 Projects" template component plugin. Add it to your application.

3. **Configure the Plugin:**
   - Configure the plugin settings as needed for your specific project management requirements.

## Features

- **Partial Reports:** Supports partial reports to display project-related data.
- **Custom Styling:** Includes a CSS file for custom styling (`#APP_FILES#style#MIN#.css`).

## Example Usage

Here is an example query that demonstrates how to use the plugin within your Oracle APEX application:

```sql
begin
    wwv_flow_imp_shared.create_plugin(
        p_id => wwv_flow_imp.id(15319474348202833),
        p_plugin_type => 'TEMPLATE COMPONENT',
        p_theme_id => nvl(wwv_flow_application_install.get_theme_id, ''),
        p_name => 'KSCOPE24_PROJECTS',
        p_display_name => 'KSCOPE24-Projects',
        p_supported_component_types => 'PARTIAL:REPORT',
        p_css_file_urls => '#APP_FILES#style#MIN#.css'
    );
end;
/
```

## Contributions

Contributions to enhance this plugin are welcome. Please fork the repository and submit a pull request with your changes.

## License

This project was created by Marco Pereira and Kristhal Meng and is open source. It is free to use and distribute.

## Contact

For any questions or support, please contact Marco Pereira @markuspg or Kristhal Meng @kristhalmeng on X (Twitter).
