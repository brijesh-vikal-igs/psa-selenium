# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe '10xResourceImport' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it '10xResourceImport' do
    @driver.get('http://ec2-52-87-156-42.compute-1.amazonaws.com:3000/')
    @driver.find_element(:css, '.icon-reorder').click
    @driver.find_element(:link_text, 'Administration').click
    @driver.find_element(:css, '.imports > li:nth-child(3) .dashboard-item-label').click
    @driver.find_element(:xpath, '//a[contains(@href, \'/easy_entity_imports/18\')]').click
    @driver.find_element(:name, 'attachments[dummy][file]').click
    @driver.find_element(:name, 'attachments[dummy][file]').send_keys('/home/dayalan/Downloads/PSA 10.x imports - Resources (5) .csv')
    @driver.find_element(:name, 'button').click
    @driver.find_element(:css, '.icon-magnifier:nth-child(1)').click
    element = @driver.find_element(:css, '.import-button')
    @driver.action.move_to_element(element).perform
    dropdown = @driver.find_element(:id, 'easy_entity_import_merge_by')
    dropdown.find_element(:xpath, "//option[. = 'ID']").click
    dragged = @driver.find_element(:css, 'big[data-name=id]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_easy_external_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=email]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_login_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=firstname]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_firstname_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=lastname]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_lastname_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=email]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_mail_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'Password\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_password_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'Confirm Password\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_password_confirmation_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=Contract_Type]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_27_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=Onsite_Offshore]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_28_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=user_Exit_Date]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_29_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=user_Start_Date]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_30_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=active]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_33_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'ERM BU ID\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_36_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=id]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=Supervisor]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_supervisor_user_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    @driver.find_element(:css, '.icon-import').click
  end
end