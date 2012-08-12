package org.example.demo



import org.junit.*
import grails.test.mixin.*

@TestFor(VerwalterController)
@Mock(Verwalter)
class VerwalterControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/verwalter/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.verwalterInstanceList.size() == 0
        assert model.verwalterInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.verwalterInstance != null
    }

    void testSave() {
        controller.save()

        assert model.verwalterInstance != null
        assert view == '/verwalter/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/verwalter/show/1'
        assert controller.flash.message != null
        assert Verwalter.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/verwalter/list'


        populateValidParams(params)
        def verwalter = new Verwalter(params)

        assert verwalter.save() != null

        params.id = verwalter.id

        def model = controller.show()

        assert model.verwalterInstance == verwalter
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/verwalter/list'


        populateValidParams(params)
        def verwalter = new Verwalter(params)

        assert verwalter.save() != null

        params.id = verwalter.id

        def model = controller.edit()

        assert model.verwalterInstance == verwalter
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/verwalter/list'

        response.reset()


        populateValidParams(params)
        def verwalter = new Verwalter(params)

        assert verwalter.save() != null

        // test invalid parameters in update
        params.id = verwalter.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/verwalter/edit"
        assert model.verwalterInstance != null

        verwalter.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/verwalter/show/$verwalter.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        verwalter.clearErrors()

        populateValidParams(params)
        params.id = verwalter.id
        params.version = -1
        controller.update()

        assert view == "/verwalter/edit"
        assert model.verwalterInstance != null
        assert model.verwalterInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/verwalter/list'

        response.reset()

        populateValidParams(params)
        def verwalter = new Verwalter(params)

        assert verwalter.save() != null
        assert Verwalter.count() == 1

        params.id = verwalter.id

        controller.delete()

        assert Verwalter.count() == 0
        assert Verwalter.get(verwalter.id) == null
        assert response.redirectedUrl == '/verwalter/list'
    }
}
