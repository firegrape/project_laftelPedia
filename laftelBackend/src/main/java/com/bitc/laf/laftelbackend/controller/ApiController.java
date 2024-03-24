package com.bitc.laf.laftelbackend.controller;


import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api")
@RestController
public class ApiController {

    private final RestTemplate restTemplate;

    public ApiController(RestTemplateBuilder restTemplateBuilder) {
        this.restTemplate = restTemplateBuilder.additionalInterceptors(
                (ClientHttpRequestInterceptor) (request, body, execution) -> {
                    request.getHeaders().add("User-Agent", "Mozilla/5.0");
                    return execution.execute(request, body);
                }
        ).build();
    }
    @GetMapping("/daily")
    public String ApiDaily() {
        String url = "https://api.laftel.net/api/search/v2/daily/";
        return restTemplate.getForObject(url, String.class);
    }

    @GetMapping("/slide")
    public String ApiSlide() {
        String url = "https://api.laftel.net/api/carousels/v1/list/";
        return restTemplate.getForObject(url, String.class);
    }

    @GetMapping("/review")
    public String ApiReview() {
        String url = "  https://api.laftel.net/aniDetail/reviewInsert";
        return restTemplate.getForObject(url, String.class);
    }




    @PostMapping("/genre/{genre}")
    public String Apigenre(@PathVariable String genre) {
        String url = "https://api.laftel.net/api/search/v1/discover/?sort=rank&genres=" + genre + "&viewable=true&offset=0&size=200";
        return restTemplate.getForObject(url, String.class);
    }

    @PostMapping("/random/{random}")
    public String ApiRandom(@PathVariable String random) {
        String url = "https://api.laftel.net/api/recommends/v2/themes/"+random+"/";
        return restTemplate.getForObject(url, String.class);
    }

    @PostMapping("/auto/{searchMonter}")
    public String ApiautoComplete(@PathVariable String searchMonter) {
        String url = "https://api.laftel.net/api/search/v1/auto_complete/?keyword="+searchMonter;
        return restTemplate.getForObject(url, String.class);
    }

    @PostMapping("/search/{keyword}/{count}")
    public String ApiKeyword(@PathVariable String keyword , @PathVariable String count) {
        String url = "https://api.laftel.net/api/search/v3/keyword/?keyword="+keyword+"&viewing_only=true&offset="+count+"&size=24";
        return restTemplate.getForObject(url, String.class);
    }

    @PostMapping("/detail/{itemId}")
    public String ApiDetail(@PathVariable String itemId) {
        String url = "https://api.laftel.net/api/v1.0/items/"+ itemId +"/detail/";
        return restTemplate.getForObject(url, String.class);
    }

    //별점
    @PostMapping("/star/{itemId}")
    public String ApiStar(@PathVariable String itemId) {
        String url = "https://api.laftel.net/api/items/v1/"+itemId+"/statistics/";
        return restTemplate.getForObject(url, String.class);
    }


    @PostMapping("/comment/{itemId}")
    public String ApiComment(@PathVariable String itemId) {

        String url = "https://api.laftel.net/api/reviews/v2/list/?item_id="+itemId;
        return restTemplate.getForObject(url, String.class);
    }


    @PostMapping("/episode/{itemId}")
    public String ApiEpisode(@PathVariable String itemId) {

        String url = "https://api.laftel.net/api/episodes/v2/list/?item_id="+itemId;
        return restTemplate.getForObject(url, String.class);
    }


    @PostMapping("/filter/")
    public String ApiFilter(@RequestParam String genres, @RequestParam String excludeGenres, @RequestParam String tags, @RequestParam String excludeTags,
                            @RequestParam String years, @RequestParam String offset) {

        String urlTemplate = "https://api.laftel.net/api/search/v1/discover/?sort=rank&genres=%s&exclude_genres=%s&tags=%s&exclude_tags=%s&years=%s&viewable=true&offset=%s&size=60";
        String url = String.format(urlTemplate, genres, excludeGenres, tags, excludeTags, years, offset);
        return restTemplate.getForObject(url, String.class);
    }


}